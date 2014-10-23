class ArticlesController < ApplicationController
  def show
    @article = Article.find params[:id]
    @other_articles = Article.where("id != ?", @article.id).limit(5)
  end

  def index
    @articles = Article.all
  end
end
