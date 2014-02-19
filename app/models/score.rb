class Score < ActiveRecord::Base
belongs_to :ballot
#belongs_to :user, through => :ballots
validates :points, :presence => true
validates :rank, :presence => true  
validates :individualcomments, :presence => true  
end
