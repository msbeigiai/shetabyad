class Lesson < ApplicationRecord
	acts_as_votable
  mount_uploader :image, ImageUploader
	mount_uploader :thumbnail_image, ImageUploader
  belongs_to :tutorial
	has_one :video
	#has_many :comments, dependent: :destroy
	acts_as_commontable

	extend FriendlyId
  friendly_id :title_url, use: :slugged

  def slug=(value)
    if value.present?
      write_attribute(:slug, value)
    end
  end
end
