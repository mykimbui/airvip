class ProfilesController < ApplicationController
  before_action :set_profile, only: [:show, :edit, :update]
  skip_before_action :authenticate_user!, only: [ :index, :show ]

  def index

    varfirst = params[:first_name]
    @profiles = User.where(first_name: varfirst)

    varlast = params[:last_name]
    @profiles = @profiles + User.where(last_name: varlast)

#    varspec = params[:speciality]
#    @profiles = User.where(speciality: :varspec)

    @profiles_a = User.where.not(latitude: nil, longitude: nil)

    @hash = Gmaps4rails.build_markers(@profiles_a) do |profile_a, marker|
      marker.lat profile_a.latitude
      marker.lng profile_a.longitude
    end
      # marker.infowindow render_to_string(partial: "/flats/map_box", locals: { flat: flat })
    end

    def show
      @profile = User.find(params[:id])
      @alert_message = "You are viewing #{@user.name}"
      @profile_coordinates = { lat: @profile.latitude, lng: @profile.longitude }

    end

    def edit
    end

    def update
      @profile.update(profile_params)
      redirect_to profile_path(@profile)
    end

    def new_speciality
      @profile = User.find(params[:profile_id])
      @profile.specialities.create!(speciality_params)
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
      params.require(:speciality).permit(:name)
    end
  end
