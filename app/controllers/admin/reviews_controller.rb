class Admin::ReviewsController < Admin::AdminController
  def new
    @review = Review.new
  end

  def create
    @review = Review.new review_params
    @review.author = current_user
    @review.save
    redirect_to @review
  end

  private
  
  def review_params
    params.require(:review).permit(:title, :body)
  end
end
