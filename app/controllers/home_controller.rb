class HomeController < ApplicationController
  def index
    contents = Content.published.order("created_at desc").limit(5)
    @main_content = contents.first
    @other_contents = contents[1..-1]
  end
end
