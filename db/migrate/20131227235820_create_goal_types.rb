class CreateGoalTypes < ActiveRecord::Migration
  def change
    create_table :goal_types do |t|
      t.string :name
      t.string :mode

      t.timestamps
    end
  end
end
