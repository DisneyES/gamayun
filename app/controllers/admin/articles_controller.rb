class Admin::ArticlesController < Admin::AdminController
  def create
    @article = Article.create article_params
    redirect_to @article
  end

  private
  
  def article_params
    params.require(:article).permit(:title, :body)
  end
end
