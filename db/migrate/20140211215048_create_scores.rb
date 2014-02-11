class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.integer :points
      t.integer :rank
      t.integer :win

      t.timestamps
    end
  end
end
