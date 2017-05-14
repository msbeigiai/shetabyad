class Lesson < ApplicationRecord
	acts_as_votable
  mount_uploader :image, VideoUploader
  belongs_to :tutorial
end
