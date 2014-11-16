class Review < Content
  validates :url, uniqueness: true

  mount_uploader :poster, PosterUploader
end
