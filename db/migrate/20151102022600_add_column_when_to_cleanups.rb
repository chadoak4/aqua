class AddColumnWhenToCleanups < ActiveRecord::Migration
  def change
    add_column :cleanups, :when, :string
  end
end
