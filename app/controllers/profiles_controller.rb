class ProfilesController < ApplicationController
  before_action :set_profile, only: [:show, :edit, :update]
  skip_before_action :authenticate_user!, only: [ :index, :show ]

  def index
  
    if params[:first_name] != "" && params[:last_name] != ""
      @profiles = User.where(first_name: params[:first_name], last_name: params[:last_name])
    elsif params[:first_name] != ""
      @profiles = User.where(first_name: params[:first_name])
    elsif params[:last_name] != ""
      @profiles = User.where(last_name: params[:last_name])
    else
      @profiles = User.all
    end
      @profiles = @profiles.to_a.uniq

      
    unless params[:specialities].empty?
      @speciality = Speciality.find_by_name(params[:specialities])
      @profiles = @profiles.select!{ |profile| profile.specialities.include?(@speciality) }
    end
    
    
#    @profiles_a = User.where.not(latitude: nil, longitude: nil)
#    @ok = @profiles + @profiles_a

    @hash = Gmaps4rails.build_markers(@profiles) do |profile_a, marker|
      marker.lat profile_a.latitude
      marker.lng profile_a.longitude
    end
  end

  def show
    @profile = User.find(params[:id])
    #@alert_message = "You are viewing #{@user.name}"
    @profile_coordinates = { lat: @profile.latitude, lng: @profile.longitude }
    # @booking = @profile.celeb_bookings
    # @reviews_celeb = @booking.map do |book|
    #     book.reviews
    # end
    # @booking = @profile.renter_bookings
    # @reviews_renter = @booking.map do |book|
    #     book.reviews
    # end
   @reviews_celeb = Review.where(renter_id: @profile)
   @reviews_renter = Review.where(celeb_id: @profile)
  end

  def edit
     @spec = @profile.user_specialities.build()
  end

  def new_speciality
    @profile = User.find(params[:profile_id])
    userspec = @profile.user_specialities.build(speciality_params)
    userspec.save
    redirect_to profile_path(@profile)
  end

  def update
    @profile.update(profile_params)
    redirect_to profile_path(@profile)
  end

  private

  def set_profile
    @profile = User.find(params[:id])
  end

  def profile_params
    params.require(:user).permit(:first_name, :last_name, :address, :email, :phone_number, :profile_picture, :profile_picture_cache, :city, :user_specialities, :role, :price_per_day)
  end

  def speciality_params
    params.require(:user_speciality).permit(:speciality_id)
  end
end
