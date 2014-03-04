# == Schema Information
#
# Table name: ballots
#
#  id         :integer          not null, primary key
#  created_at :datetime
#  updated_at :datetime
#  score      :integer
#  comment    :string(255)
#  round_id   :integer
#  score_id   :integer
#  debate_id  :integer
#  user_id    :integer
#

class Ballot < ActiveRecord::Base
belongs_to :round
  has_many :scores
  has_many :debates
  has_many :users, :through => :debates
 validates :comment, :presence => true 

  accepts_nested_attributes_for :scores
end
