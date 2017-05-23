class AddTitleUrlToTutorialTypes < ActiveRecord::Migration[5.0]
  def change
    add_column :tutorial_types, :title_url, :string
    add_index :tutorial_types, :title_url, unique: true
  end
end
