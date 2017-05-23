class AddSlugToTutorialTypes < ActiveRecord::Migration[5.0]
  def change
    add_column :tutorial_types, :slug, :string
    add_index :tutorial_types, :slug
  end
end
