class Link <ActiveRecord::Base
  has_many :comments
  validates :title, :presence => true
  validates :url, :presence => true
  validates :source, :presence => true
  validates :username, :presence => true


  # def calculate_score
  #   self.score = self.points
  # end
end
