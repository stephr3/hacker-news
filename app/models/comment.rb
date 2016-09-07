class Comment <ActiveRecord::Base
  belongs_to :link
  validates :body, :presence => true
  validates :username, :presence => true
end
