class ArticlesController < ApplicationController
  def show
    @article = Article.where(url: params[:id]).limit(1).includes(:author).first
    @other_articles = Article.where("id != ?", @article.id).limit(5)
  end

  def index
    @articles = Article.all
  end
end
