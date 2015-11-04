class AddColumnTextToBlogs < ActiveRecord::Migration
  def change
    add_column :blogs, :entry, :text
  end
end
