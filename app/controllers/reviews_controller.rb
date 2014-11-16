class ReviewsController < ApplicationController
  def show
    @review = Review.published.where(url: params[:id]).limit(1).includes(:author).first
    redirect_to :back unless @review

    @other_reviews = Review.published.where("id != ?", @review.id).limit(5)
  end

  def index
    @reviews = Review.published
  end
end
