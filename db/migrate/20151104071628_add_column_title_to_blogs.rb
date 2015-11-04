class AddColumnTitleToBlogs < ActiveRecord::Migration
  def change
    add_column :blogs, :tite, :string
  end
end
