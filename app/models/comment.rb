class Comment <ActiveRecord::Base
  validates :body, :presence => true
  validates :username, :presence => true
end
