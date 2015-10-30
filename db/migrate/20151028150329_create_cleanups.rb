class CreateCleanups < ActiveRecord::Migration
  def change
    create_table :cleanups do |t|
      t.string :name
      t.integer :date
      t.integer :time
      t.text :description
      t.text :supplies
      t.text :additionalinfo

      t.timestamps null: false
    end
  end
end
