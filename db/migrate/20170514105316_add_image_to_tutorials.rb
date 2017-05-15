class AddImageToTutorials < ActiveRecord::Migration[5.0]
  def change
    add_column :tutorials, :images, :string
  end
end
