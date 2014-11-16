class Article < Content
  validates :url, uniqueness: true
end
