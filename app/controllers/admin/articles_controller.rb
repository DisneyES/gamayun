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
    @article.save
    redirect_to admin_articles_path
  end

  def edit
    @article = Article.where(url: params[:id]).limit(1).first
  end

  def update
    @article = Article.where(url: params[:id]).limit(1).first

    @article.update article_params
    redirect_to admin_articles_path
  end

  private
  
  def article_params
    params.require(:article).permit(:title, :body, :cover, :published)
  end
end
