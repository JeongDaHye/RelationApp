class User < ApplicationRecord
  has_one :profile, dependent: :destroy
  has_many :articles
  has_many :likes
  has_many :comments
  has_many :l_articles, through: :likes, source: :article
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
