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
    @profile.role == 'Celebrity' ? @review.celeb = @profile : @review.renter = @profile
    if @review.save
      redirect_to profile_path(@review.celeb)
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
