class CreateVideos < ActiveRecord::Migration[5.0]
  def change
    create_table :videos do |t|
      t.string :aparat_embed
      t.string :aparat_id
      t.string :youtube_embed
			t.references :lesson, foreign_key: true
			
      t.timestamps
    end
  end
end
