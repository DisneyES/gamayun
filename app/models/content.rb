class Content < ActiveRecord::Base
  belongs_to :author, class_name: User

  before_validation :set_url!, on: :create

  private

  def set_url!
    self.url ||= title.parameterize
  end
end
