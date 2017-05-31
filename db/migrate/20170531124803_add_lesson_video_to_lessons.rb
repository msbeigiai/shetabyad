class AddLessonVideoToLessons < ActiveRecord::Migration[5.0]
  def change
    add_column :lessons, :lesson_video, :string
  end
end
