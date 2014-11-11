class Content < ActiveRecord::Base
  belongs_to :author, class_name: User

  before_validation :set_url!, on: :create

  def to_param
    url
  end

  def html_body
    Redcarpet::Markdown.new(Redcarpet::Render::HTML).render(body).html_safe
  end

  private

  def set_url!
    self.url ||= title.parameterize
  end
end
