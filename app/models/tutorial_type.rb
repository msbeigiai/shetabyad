class TutorialType < ApplicationRecord
  
  extend FriendlyId
  friendly_id :title_url, use: :slugged

  has_many :tutorials

  def slug=(value)
    if value.present?
      write_attribute(:slug, value)
    end
  end
end
