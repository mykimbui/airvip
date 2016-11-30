class ProfilesController < ApplicationController
  before_action :set_profile, only: [:show, :edit, :update]

  def index

    varfirst = params[:first_name]
    @profiles = User.where(first_name: varfirst)

    varlast = params[:last_name]
    @profiles = @profiles + User.where(last_name: varlast) 

#    varspec = params[:speciality]
#    @profiles = User.where(speciality: :varspec)

  end

  def show
  end

  def edit
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
end
