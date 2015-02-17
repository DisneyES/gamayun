class Content < ActiveRecord::Base
  belongs_to :author, class_name: User
  belongs_to :section

  scope :published, -> { where(published: true) }

  mount_uploader :cover, CoverUploader

  def to_param
    url
  end

  def html_body
    Redcarpet::Markdown.new(Redcarpet::Render::HTML).render(body).html_safe
  end

  def set_url!
    self.url = title.parameterize
  end
end
