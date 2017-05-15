class Lesson < ApplicationRecord
	acts_as_votable
  mount_uploader :image, ImageUploader
	mount_uploader :thumbnail_image, ImageUploader
  belongs_to :tutorial
	has_one :video
end
