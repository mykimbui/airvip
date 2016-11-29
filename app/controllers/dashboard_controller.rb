class DashboardController < ApplicationController
  before_action :set_booking, only: [:cancel, :accept, :decline]

  def show
    @bookings = current_user.bookings
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
