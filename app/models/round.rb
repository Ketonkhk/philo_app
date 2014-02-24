# == Schema Information
#
# Table name: rounds
#
#  id         :integer          not null, primary key
#  created_at :datetime
#  updated_at :datetime
#  debate_id  :integer
#  ballot_id  :integer
#  user_id    :integer
#

class Round < ActiveRecord::Base
 has_many :debates
  has_many :ballots
  has_many :users, :through => :debates
end
