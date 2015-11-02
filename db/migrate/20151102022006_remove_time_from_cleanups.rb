class RemoveTimeFromCleanups < ActiveRecord::Migration
  def change
    remove_column :cleanups, :time, :integer
  end
end
