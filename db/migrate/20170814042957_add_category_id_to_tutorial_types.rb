class AddCategoryIdToTutorialTypes < ActiveRecord::Migration[5.0]
  def change
    add_column :tutorial_types, :category_id, :integer
  end
end
