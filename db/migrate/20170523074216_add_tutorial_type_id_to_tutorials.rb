class AddTutorialTypeIdToTutorials < ActiveRecord::Migration[5.0]
  def change
    add_column :tutorials, :tutorial_type_id, :integer
  end
end
