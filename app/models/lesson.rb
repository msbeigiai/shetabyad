class Lesson < ApplicationRecord
  mount_uploader :video, VideoUploader
  belongs_to :tutorial
end
