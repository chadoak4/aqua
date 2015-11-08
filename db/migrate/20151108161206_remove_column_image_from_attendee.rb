class RemoveColumnImageFromAttendee < ActiveRecord::Migration
  def change
    remove_column :attendees, :image, :string
  end
end
