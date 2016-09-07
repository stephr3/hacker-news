class Link <ActiveRecord::Base
  validates :title, :presence => true
  validates :url, :presence => true
  validates :source, :presence => true
  validates :username, :presence => true
end
