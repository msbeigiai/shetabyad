class Lesson < ApplicationRecord
  mount_uploader :image, VideoUploader
  belongs_to :tutorial
end
