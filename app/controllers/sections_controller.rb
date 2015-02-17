class SectionsController < ApplicationController
  def show
    @section = Section.where(url: params[:id]).limit(1).first

    redirect_to :back unless @section

    @articles = @section.articles
    @reviews = @section.reviews
  end
end
