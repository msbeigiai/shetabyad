class AddIndexToTutorials < ActiveRecord::Migration[5.0]
  def change
    add_column :tutorials, :slug, :string
    add_index :tutorials, :slug, unique: true
  end
end
