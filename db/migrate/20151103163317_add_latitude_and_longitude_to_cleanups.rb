class AddLatitudeAndLongitudeToCleanups < ActiveRecord::Migration
  def change
    add_column :cleanups, :latitude, :float
    add_column :cleanups, :longitude, :float
  end
end
