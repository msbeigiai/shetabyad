class AddSignToTutorials < ActiveRecord::Migration[5.0]
  def change
    add_column :tutorials, :sign, :string
  end
end
