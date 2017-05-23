class Tutorial < ApplicationRecord
	mount_uploader :images, ImageUploader
  has_many :lessons
  belongs_to :tutorial_type
  
  extend FriendlyId
  friendly_id :title_url, use: :slugged

  def slug=(value)
    if value.present?
      write_attribute(:slug, value)
    end
  end
end
