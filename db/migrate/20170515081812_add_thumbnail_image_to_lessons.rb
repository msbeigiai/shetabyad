class AddThumbnailImageToLessons < ActiveRecord::Migration[5.0]
  def change
    add_column :lessons, :thumbnail_image, :string
  end
end
