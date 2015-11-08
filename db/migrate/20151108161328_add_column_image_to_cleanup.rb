class AddColumnImageToCleanup < ActiveRecord::Migration
  def change
    add_column :cleanups, :user_image, :string
  end
end
