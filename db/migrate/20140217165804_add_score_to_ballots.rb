class AddScoreToBallots < ActiveRecord::Migration
  def change
  add_column :ballots, :score, :integer
  end
end
