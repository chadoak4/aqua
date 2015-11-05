class RemoveColumnEventTimeFromCleanups < ActiveRecord::Migration
  def change
    remove_column :cleanups, :eventtime, :string
    remove_column :cleanups, :when, :string
  end
end
