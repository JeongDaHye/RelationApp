class Artist < ApplicationRecord
  mount_uploader :image, ProfileImgUploader
  
  validates :name, presence: true
  #validates :nationality
  validate :image_size
  
  private
  def image_size
    if self.image.size > 5.megabyte
      errors.add(:image, '는 5mb보다 작아야 합니다.')
    end
  end
end
