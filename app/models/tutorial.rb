class Tutorial < ApplicationRecord
	mount_uploader :images, ImageUploader
  has_many :lessons
  belongs_to :tutorial_type
end
