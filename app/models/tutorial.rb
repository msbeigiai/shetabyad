class Tutorial < ApplicationRecord
  ratyrate_rateable "rate"
  validates :description, presence: true, length: { maximum: 400 }
	mount_uploader :images, ImageUploader
  #has_many :lessons
  has_many :sections
  belongs_to :tutorial_type
  acts_as_commontable
  
  extend FriendlyId
  friendly_id :title_url, use: :slugged

  def slug=(value)
    if value.present?
      write_attribute(:slug, value)
    end
  end
end
