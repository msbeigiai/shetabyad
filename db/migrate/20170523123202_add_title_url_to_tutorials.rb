class AddTitleUrlToTutorials < ActiveRecord::Migration[5.0]
  def change
    add_column :tutorials, :title_url, :string
    add_index :tutorials, :title_url, unique: true
  end
end
