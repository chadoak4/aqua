class CreateAttendingEvents < ActiveRecord::Migration
  def change
    create_table :attending_events do |t|
      t.string   :participation
      t.text     :comment
      t.integer  :number_of_guests

      t.timestamps null: false
    end
  end
end
