class Course < ApplicationRecord
  mount_uploader :image, ImageUploader
  has_one :video
end
