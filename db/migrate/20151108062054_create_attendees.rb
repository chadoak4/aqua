class CreateAttendees < ActiveRecord::Migration
  def change
    create_table :attendees do |t|
      t.string :attending
      t.text :comment
      t.integer :guests
      t.integer :user_id
      t.integer :cleanup_id
      t.timestamps null: false
    end
  end
end
