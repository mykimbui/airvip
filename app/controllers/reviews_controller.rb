class ReviewsController < ApplicationController
  before_action :review_params

  def new
    @reviews = Review.new
  end

  def create
    @profile = Profile.find(params[:profile_id])
    review = Review.new(review_params)
    @profile.role == 'celeb' ? review.celeb_id = @profile : review.renter_id = @profile

    if review.save
      redirect_to profiles_path
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
