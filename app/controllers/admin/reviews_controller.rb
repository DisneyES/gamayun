class Admin::ReviewsController < Admin::AdminController
  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new review_params
    @review.author = current_user
    @review.save
    redirect_to admin_reviews_path
  end

  def edit
    @review = Review.where(url: params[:id]).limit(1).first
  end

  def update
    @review = Review.where(url: params[:id]).limit(1).first

    @review.update review_params
    redirect_to admin_reviews_path
  end

  private
  
  def review_params
    params.require(:review).permit(:title, :body, :published, :cover, :poster)
  end
end
