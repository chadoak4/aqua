class RemoveColumnEventTimeFromCleanups < ActiveRecord::Migration
  def change
    remove_column :cleanups, :eventtime, :string
  end
end
