class ProfilesController < ApplicationController
  before_action :set_profile, only: [:show, :edit, :update]
  skip_before_action :authenticate_user!, only: [ :index, :show ]

  def index
    varfirst = params[:first_name]
    @profiles = User.where(first_name: varfirst)

    varlast = params[:last_name]
    @profiles = @profiles + User.where(last_name: varlast)

    varspec = params[:specialities]
    if varspec != ""
      spec = Speciality.where(name: varspec).uniq
      user_list = UserSpeciality.where(speciality_id: spec.first.id)
      @profiles = @profiles + user_list.map do |row|
        User.find(row.user_id)
      end
    else
      @profiles
    end

    @profiles = @profiles.uniq

    @profiles_a = User.where(latitude: nil, longitude: nil)
    @ok = @profiles + @profiles_a

    @hash = Gmaps4rails.build_markers(@ok) do |profile_a, marker|
      marker.lat profile_a.latitude
      marker.lng profile_a.longitude
    end
  end

  def show
    @profile = User.find(params[:id])
    #@alert_message = "You are viewing #{@user.name}"
    @profile_coordinates = { lat: @profile.latitude, lng: @profile.longitude }
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
