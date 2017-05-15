class Tutorial < ApplicationRecord
	mount_uploader :images, ImageUploader
  has_many :lessons
end
