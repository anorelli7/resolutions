class AddCompletionToGoal < ActiveRecord::Migration
  def change
    add_column :goals, :complete, :integer
  end
end
