class ReviewsController < ApplicationController
  def new
    @review = Review.new
    @tour = Tour.find(params[:tour_id])
    @reservation = Reservation.find(params[:reservation_id])
    # authorize(@review)
  end

  def create
    @review = Review.new(review_params)
    @review.reservation = Reservation.find(params[:reservation_id])
    # authorize(@review)
    if @review.save
      redirect_to tours_path
    else
      flash[:alert] = "Something went wrong. Please try again later!"
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:tour_rating, :review_description)
  end
end
