class Song < ApplicationRecord
  mount_uploader :cover, CoverUploader
  has_many :participates
  has_many :artists, through: :participates, source: :artist 
  #artists는 우리가 만든 것, artist는 model name
  acts_as_commentable
  
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
