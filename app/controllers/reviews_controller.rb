class ReviewsController < ApplicationController
     # before_action :review_params

  def new
    @profile = User.find(params[:profile_id])
    @review = Review.new
  end

  def create

    @profile = User.find(params[:profile_id])
    @booking = Booking.find(params[:booking_id])
    @review = Review.new(review_params)
    @review.renter = User.find(@booking.renter_id)
      @review.celeb = User.find(@booking.celeb_id)

     if @review.save
             redirect_to profile_path(@profile)

    else
      render "profiles/show"
    end
  end

  def destroy
   @review.destroy
   redirect_to profiles_path
  end


  private
   def review_params
     params.require(:review).permit(:content,:rating)
   end
end
