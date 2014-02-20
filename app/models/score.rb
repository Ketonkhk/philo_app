class Score < ActiveRecord::Base
belongs_to :ballot, :include => :user, :foreign_key => "user_id"
validates :points, :presence => true
validates :rank, :presence => true  
validates :individualcomments, :presence => true  
end
