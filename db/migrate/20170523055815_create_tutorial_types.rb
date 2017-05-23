class CreateTutorialTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :tutorial_types do |t|
      t.string :title

      t.timestamps
    end
  end
end
