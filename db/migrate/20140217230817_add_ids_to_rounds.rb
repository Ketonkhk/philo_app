class AddIdsToRounds < ActiveRecord::Migration
  def change
  add_column :rounds, :debate_id, :integer
  add_column :rounds, :ballot_id, :integer
  add_column :rounds, :user_id, :integer
  end
end
