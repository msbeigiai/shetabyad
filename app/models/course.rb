class Course < ApplicationRecord
  extend FriendlyId
  friendly_id :title_url, use: :slugged
  
  mount_uploader :image, ImageUploader
  has_one :video
  
  def slug=(value)
    if value.present?
      write_attribute(:slug, value)
    end
  end
end
