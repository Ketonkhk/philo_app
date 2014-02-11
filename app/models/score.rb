class Score < ActiveRecord::Base
belongs_to :ballot
validates :speakerpoint, :presence => true
validates :rank, :presence => true    
end
