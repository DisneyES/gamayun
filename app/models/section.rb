class Section < ActiveRecord::Base
  validates :url, uniqueness: true

  has_many :contents
  has_many :articles
  has_many :reviews

  def to_param
    url
  end

  def set_url!
    self.url = name.parameterize
  end
end
