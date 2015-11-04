class AddColumnEventTimeToCleanups < ActiveRecord::Migration
  def change
    add_column :cleanups, :eventtime, :string
  end
end
