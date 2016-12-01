class DashboardController < ApplicationController
    skip_before_action :authenticate_user!, only: [ :show ]

  def show
    @renter_bookings = current_user.renter_bookings
    @celeb_bookings = current_user.celeb_bookings
    #@celeb = User.find(params[:profile_id])
  end
end
