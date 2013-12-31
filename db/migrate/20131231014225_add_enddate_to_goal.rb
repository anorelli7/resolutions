class AddEnddateToGoal < ActiveRecord::Migration
  def change
    add_column :goals, :end_date, :datetime, :default => '2014-12-31 23:59:59'
  end
end
