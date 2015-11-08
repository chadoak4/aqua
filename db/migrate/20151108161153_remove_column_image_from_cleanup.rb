class RemoveColumnImageFromCleanup < ActiveRecord::Migration
  def change
    remove_column :cleanups, :image, :string
  end
end
