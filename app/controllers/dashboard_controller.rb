class DashboardController < ApplicationController
  before_action :set_booking, only: [:cancel, :accept, :decline]
  def show
    @bookings = current_user.bookings
  end

  def accept
    @booking.accept!
    @booking.save
  end

  def cancel
    @booking.destroy
    redirect_to dashboard_path
  end

  def decline
    @booking.decline!
    @booking.save
  end

  private
  def set_booking
    @booking = Booking.find(params[:id])
  end
end
