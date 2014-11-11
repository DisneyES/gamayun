class Admin::ArticlesController < Admin::AdminController
  def new
    @article = Article.new
  end

  def create
    @article = Article.new article_params
    @article.author = current_user
    @article.save
    redirect_to @article
  end

  private
  
  def article_params
    params.require(:article).permit(:title, :body, :cover)
  end
end
