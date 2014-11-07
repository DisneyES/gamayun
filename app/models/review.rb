class Review < Content
  validates :url, uniqueness: true
end
