class Admin::ReviewsController < Admin::AdminController
  def create
    @review = Review.create review_params
    redirect_to @review
  end

  private
  
  def review_params
    params.require(:review).permit(:title, :body)
  end
end
