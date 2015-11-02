class RemoveColumnPictureToCleanups < ActiveRecord::Migration
  def change
    remove_column :cleanups, :picture, :string
  end
end
