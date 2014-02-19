class AddIdsToDebates < ActiveRecord::Migration
  def change
  add_column :debates, :ballot_id, :integer
  add_column :debates, :round_id, :integer
  add_column :debates, :user_id, :integer
  end
end
