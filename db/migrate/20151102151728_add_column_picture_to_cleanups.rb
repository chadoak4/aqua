class AddColumnPictureToCleanups < ActiveRecord::Migration
  def change
    add_column :cleanups, :picture, :string
  end
end
