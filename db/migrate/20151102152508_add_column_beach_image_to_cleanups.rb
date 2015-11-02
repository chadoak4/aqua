class AddColumnBeachImageToCleanups < ActiveRecord::Migration
  def change
    add_column :cleanups, :beach_image_id, :string
  end
end
