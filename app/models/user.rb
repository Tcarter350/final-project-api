class User < ApplicationRecord
  has_secure_password
  has_many :posts
  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :password_confirmation, presence: true, on: :create

  mount_uploader :image, ImageUploader
end
