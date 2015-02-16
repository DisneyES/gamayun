class Section < ActiveRecord::Base
  has_many :contents
  has_many :articles
  has_many :reviews
end
