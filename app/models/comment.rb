class Comment < ApplicationRecord
  validates :content, presence: true
  validates :user_id, presence: true, uniqueness: true
  validates :post_id, presence: true
  belongs_to :user
  belongs_to :post
end
