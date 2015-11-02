class RemoveDateFromCleanups < ActiveRecord::Migration
  def change
    remove_column :cleanups, :date, :integer
  end
end
