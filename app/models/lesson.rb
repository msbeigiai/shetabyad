class Lesson < ApplicationRecord
  extend FriendlyId
  friendly_id :title_url, use: :slugged
  
	acts_as_votable
  mount_uploader :image, ImageUploader
	mount_uploader :thumbnail_image, ImageUploader
	mount_uploader :lesson_video, VideoUploader
  belongs_to :tutorial
	has_one :video
	#has_many :comments, dependent: :destroy
	acts_as_commontable

	

  def slug=(value)
    if value.present?
      write_attribute(:slug, value)
    end
  end
end
