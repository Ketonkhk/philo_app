class AddIdsToUsers < ActiveRecord::Migration
  def change
  add_column :users, :round_id, :integer
  add_column :users, :debate_id, :integer
  add_column :users, :ballot_id, :integer
  add_column :users, :score_id, :integer
  end
end
