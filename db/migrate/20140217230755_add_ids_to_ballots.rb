class AddIdsToBallots < ActiveRecord::Migration
  def change
    add_column :ballots, :round_id, :integer
add_column :ballots, :score_id, :integer
add_column :ballots, :debate_id, :integer
add_column :ballots, :user_id, :integer
  end
end
