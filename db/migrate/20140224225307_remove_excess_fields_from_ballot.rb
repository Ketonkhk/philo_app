class RemoveExcessFieldsFromBallot < ActiveRecord::Migration
  def change
  remove_column :ballots, :score_id
  remove_column :ballots, :score
  remove_column :ballots, :debate_id
  remove_column :rounds, :debate_id
  remove_column :rounds, :ballot_id
  end
end
