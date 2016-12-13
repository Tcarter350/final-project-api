class Post < ApplicationRecord
  belongs_to :user
  has_many :suggestions
  has_and_belongs_to_many :categories
  mount_uploader :image, ImageUploader    
end
