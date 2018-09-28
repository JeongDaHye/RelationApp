class Comment < ActiveRecord::Base

  include ActsAsCommentable::Comment
  belongs_to :commentable, :polymorphic => true
  default_scope -> { order('created_at ASC') }
  belongs_to :user
  validates :comment, presence: :true, length: { minimun: 3, maximum: 200 }
end
