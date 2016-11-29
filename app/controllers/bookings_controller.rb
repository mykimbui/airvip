class BookingsController < ApplicationController
  before_action :set_booking, only: [:destroy]
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to dashboard_path
    else
      render :new
    end
  end

  def destroy
    @booking.destroy
    redirect_to dashboard_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_booking
      @booking = Booking.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def booking_params
      params.require(:booking).permit(:price, :status, :date, :content, :renter_id, :celeb_id)
    end
end
