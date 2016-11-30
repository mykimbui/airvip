class DashboardController < ApplicationController
  before_action :set_booking, only: [:cancel, :accept, :decline]

  def show
    @renter_bookings = current_user.renter_bookings
    @celeb_bookings = current_user.celeb_bookings
  end

  def accept
    @booking.accept!
    @booking.save
    redirect_to dashboard_path
  end

  def cancel
    @booking.cancel!
    @booking.save
    redirect_to dashboard_path
  end

  def decline
    @booking.decline!
    @booking.save
    redirect_to dashboard_path
  end

  private
  def set_booking
    @booking = Booking.find(params[:id])
  end
end
