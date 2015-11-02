class AddColumnLocationToCleanups < ActiveRecord::Migration
  def change
    add_column :cleanups, :location, :string
  end
end
