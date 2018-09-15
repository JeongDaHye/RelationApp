class Song < ApplicationRecord
  mount_uploader :cover, CoverUploader
  
  validates :title, presence: true
  validates :lyric, length: { minimum: 10 }
  validate :cover_size
  
  
  private
  def cover_size
    if self.cover.size > 5.megabyte
      errors.add(:cover, '는 5mb보다 작아야 합니다.')
    end
  end
end
