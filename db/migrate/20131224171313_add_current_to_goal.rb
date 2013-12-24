class AddCurrentToGoal < ActiveRecord::Migration
  def change
    add_column :goals, :current, :integer
  end
end
