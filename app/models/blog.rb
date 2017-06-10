class Blog < ApplicationRecord
  
  extend FriendlyId
  friendly_id :title_url, use: :slugged
  
  mount_uploader :picture, ImageUploader
  
  belongs_to :admin
  
  def slug=(value)
    if value.present?
      write_attribute(:slug, value)
    end
  end
end
