class AddColumnWhenToCleanups < ActiveRecord::Migration
  def change
    add_column :cleanups, :eventtimeframe, :datetime
  end
end
