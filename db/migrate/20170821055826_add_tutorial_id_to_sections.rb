class AddTutorialIdToSections < ActiveRecord::Migration[5.0]
  def change
    add_column :sections, :tutorial_id, :integer
  end
end
