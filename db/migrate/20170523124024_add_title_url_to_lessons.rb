class AddTitleUrlToLessons < ActiveRecord::Migration[5.0]
  def change
    add_column :lessons, :title_url, :string
    add_index :lessons, :title_url, unique: true
  end
end
