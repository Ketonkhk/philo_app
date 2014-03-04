# == Schema Information
#
# Table name: scores
#
#  id                 :integer          not null, primary key
#  points             :integer
#  rank               :integer
#  win                :integer
#  created_at         :datetime
#  updated_at         :datetime
#  ballot_id          :integer
#  user_id            :integer
#  comment            :string(255) **remove from table**
#  individualcomments :string(255)
#

class Score < ActiveRecord::Base
belongs_to :ballot
belongs_to :user
validates :points, :presence => true
#validates :rank, :presence => true  
validates :individualcomments, :presence => true  
 
end
