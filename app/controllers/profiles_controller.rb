class ProfilesController < ApplicationController
  def index
    @profiles = User.where(params[:first_name, :last_name, :speciality])
  end

  def show
    @profile = User.find(params[:id])
  end

  def edit
    @profile = User.find(params[:id])
  end

  def update
    @profile = User.find(params[:id])
    @profile.update(profile_params)
    redirect_to profile_path(@profile)
  end

  private

  def profile_params
    params.require(:user).permit(:first_name, :last_name, :address, :email, :phone_number, :profile_picture, :city)
  end
end
