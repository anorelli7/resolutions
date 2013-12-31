class AddDefaultValueToCurrent < ActiveRecord::Migration
  def change
  	change_column :goals, :current, :integer, :default => 0
  end
end
