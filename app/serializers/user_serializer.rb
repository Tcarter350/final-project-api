class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email
  has_many :posts

  # def image
    # object.image.url
  # end
end
