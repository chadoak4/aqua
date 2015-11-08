class FixColumnWhen < ActiveRecord::Migration
  def change
   rename_column :cleanups, :when, :eventtimeframe
  end

end
