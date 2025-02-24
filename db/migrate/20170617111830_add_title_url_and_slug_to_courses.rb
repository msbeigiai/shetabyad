class AddTitleUrlAndSlugToCourses < ActiveRecord::Migration[5.0]
  def change
    add_column :courses, :title_url, :string
    add_column :courses, :slug, :string
    add_index :courses, :slug, unique: true
  end
end
