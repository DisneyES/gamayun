class ArticlesController < ApplicationController
  def show
    @article = Article.published.where(url: params[:id]).limit(1).includes(:author).first
    redirect_to :back unless @article

    @other_articles = Article.published.where("id != ?", @article.id).limit(5)
  end

  def index
    @articles = Article.published
  end
end
