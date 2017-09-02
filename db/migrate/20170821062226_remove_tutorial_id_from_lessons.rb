class RemoveTutorialIdFromLessons < ActiveRecord::Migration[5.0]
  def change
    remove_column :lessons, :tutorial_id, :integer
  end
end
