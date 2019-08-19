class ReviewsController < ApplicationController
  #Only for Cohort project purposes
  def index
    @hearo = Hearo.find_by(id: params[:hearo_id])
  end

  def new
    @hearo = Hearo.find_by(id: params[:hearo_id])
    @review = @hearo.reviews.build
  end

  def create
    @review = Review.new(review_params)
    @review.smyler = current_smyler
    @review.hearo_id = params[:hearo_id]
    if @review.save
      redirect_to hearo_reviews_path(@review.hearo)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:score, :content)
  end
end
