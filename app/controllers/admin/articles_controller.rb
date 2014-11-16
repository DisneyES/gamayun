class Admin::ArticlesController < Admin::AdminController
  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new article_params
    @article.author = current_user
    @article.set_url!

    if @article.save
      redirect_to admin_articles_path
    else
      redirect_to :back
    end
  end

  def edit
    @article = Article.where(url: params[:id]).limit(1).first
  end

  def update
    @article = Article.where(url: params[:id]).limit(1).first

    @article.assign_attributes article_params
    @article.set_url!

    if @article.save
      redirect_to admin_articles_path
    else
      redirect_to :back
    end
  end

  private
  
  def article_params
    params.require(:article).permit(:title, :body, :cover, :published)
  end
end
