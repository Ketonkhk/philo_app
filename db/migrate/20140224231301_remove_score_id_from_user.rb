class RemoveScoreIdFromUser < ActiveRecord::Migration
  def change
  remove_column :users, :score_id
  end
end
