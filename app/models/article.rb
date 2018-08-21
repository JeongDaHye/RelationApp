class Article < ApplicationRecord
  belongs_to :user
  has_many :likes
  has_many :l_users, through: :likes, source: :user
  validates :title, presence: true, length: { minimum: 3, maximum: 100 }
  validates :content, presence: true, length: { minimum: 5 }
end
