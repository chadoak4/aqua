class AddColumnWhenToCleanups < ActiveRecord::Migration
  def change
    add_column :cleanups, :when, :datetime
  end
end
