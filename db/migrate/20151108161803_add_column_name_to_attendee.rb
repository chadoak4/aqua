class AddColumnNameToAttendee < ActiveRecord::Migration
  def change
    add_column :attendees, :user_name, :string
  end
end
