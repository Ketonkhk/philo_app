class Ballot < ActiveRecord::Base
belongs_to :round
  has_many :scores
  has_many :debates
  has_many :users, :through => :debates
 validates :comment, :presence => true 
  accepts_nested_attributes_for :scores
end
