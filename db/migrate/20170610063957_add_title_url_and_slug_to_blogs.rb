class AddTitleUrlAndSlugToBlogs < ActiveRecord::Migration[5.0]
  def change
    add_column :blogs, :title_url, :string
    add_column :blogs, :slug, :string
    add_index :blogs, :slug, unique: true
  end
end
