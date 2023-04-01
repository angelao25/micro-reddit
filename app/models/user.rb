class User < ApplicationRecord
  validates :name, presence: true, length: { minimum: 2}
  validates :username, presence: true, length: { maximum: 12}, uniqueness: true 
  validates :email, presence: true, uniqueness: true 
  validates :password, presence: true

  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
  
end
