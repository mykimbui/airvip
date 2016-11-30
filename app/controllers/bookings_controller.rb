class BookingsController < ApplicationController
  before_action :set_booking, only: [:destroy, :accept, :cancel, :decline]
  before_action :set_celeb, only: [:new, :create]
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.celeb = @celeb
    @booking.renter = current_user
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

    def set_celeb
      @celeb = User.find(params[:profile_id])
    end

    def booking_params
      params.require(:booking).permit(:price, :status, :date, :content, :renter_id, :celeb_id)
    end
end
