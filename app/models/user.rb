class User < ActiveRecord::Base
  authenticates_with_sorcery!

  mount_uploader :avatar, AvatarUploader

  has_many :contents, foreign_key: "author_id"
  has_many :articles, foreign_key: "author_id"
  has_many :reviews, foreign_key: "author_id"

  def to_s
    name
  end
end
