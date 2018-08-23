class Song < ApplicationRecord
  mount_uploader :cover, CoverUploader
  
  validates :title, presence: true
  validates :lyric, length: { minimum: 10 }
  
end
