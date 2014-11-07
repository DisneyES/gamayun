class Article < Content
  validates :url, uniqueness: true

  mount_uploader :cover, CoverUploader
end
