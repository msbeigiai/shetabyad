class Blog < ApplicationRecord
  mount_uploader :picture, ImageUploader
end
