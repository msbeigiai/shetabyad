class CreateLessons < ActiveRecord::Migration[5.0]
  def change
    create_table :lessons do |t|
      t.string :title
      t.text :description
      t.references :tutorial, foreign_key: true

      t.timestamps
    end
  end
end
