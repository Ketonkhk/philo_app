class AddCommentToBallots < ActiveRecord::Migration
  def change
  add_column :ballots, :comment, :string
  end
end
