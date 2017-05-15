class Lesson < ApplicationRecord
	acts_as_votable
  mount_uploader :image, ImageUploader
  belongs_to :tutorial
end
