class AddCleanupIdToAttendingEvents < ActiveRecord::Migration
  def change
    add_column :attending_events, :cleanup_id, :integer
  end
end
