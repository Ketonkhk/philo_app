class AddBallotIdToScores < ActiveRecord::Migration
  def change
    add_column :scores, :ballot_id, :integer
    add_column :scores, :user_id, :integer
    add_column :scores, :comment, :string
  end
end
