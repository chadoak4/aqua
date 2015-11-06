class AddUserIdToCleanups < ActiveRecord::Migration
  def change
    add_column :cleanups, :user_id, :integer
  end
end
