class AddUserscommentsToScores < ActiveRecord::Migration
  def change
  add_column :scores, :individualcomments, :string
  end
end
