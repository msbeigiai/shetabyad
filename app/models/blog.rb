class Blog < ApplicationRecord
  extend FriendlyId
  friendly_id :title_url, use: :slugged
  
  mount_uploader :picture, ImageUploader
end
