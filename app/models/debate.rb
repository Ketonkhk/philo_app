# == Schema Information
#
# Table name: debates
#
#  id         :integer          not null, primary key
#  created_at :datetime
#  updated_at :datetime
#  ballot_id  :integer
#  round_id   :integer
#  user_id    :integer
#

class Debate < ActiveRecord::Base
belongs_to :round
belongs_to :user
belongs_to :ballot
end
