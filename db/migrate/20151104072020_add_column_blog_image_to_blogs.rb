class AddColumnBlogImageToBlogs < ActiveRecord::Migration
  def change
    add_column :blogs, :blog_image_id, :string
  end
end
