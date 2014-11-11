class Admin::ReviewsController < Admin::AdminController
  def new
    @review = Review.new
  end

  def create
    @review = Review.create review_params
    @review.author = current_user
    redirect_to @review
  end

  private
  
  def review_params
    params.require(:review).permit(:title, :body)
  end
end
