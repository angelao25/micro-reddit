class Post < ApplicationRecord
  validates :title, presence: true
  validates :content, presence: true
  validates :user_id, presence: true, uniqueness: true
  belongs_to :user
  has_many :comments, dependent: :destroy
end
