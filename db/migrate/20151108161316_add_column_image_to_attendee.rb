class AddColumnImageToAttendee < ActiveRecord::Migration
  def change
    add_column :attendees, :user_image, :string
  end
end
