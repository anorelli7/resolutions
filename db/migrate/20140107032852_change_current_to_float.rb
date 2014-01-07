class ChangeCurrentToFloat < ActiveRecord::Migration
  def change
  	change_column :goals, :current, :float, :default => 0
  end
end
