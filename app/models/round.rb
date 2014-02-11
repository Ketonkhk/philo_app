class Round < ActiveRecord::Base
 has_many :debates
  has_many :ballots
  has_many :users, :through => :debates
end
