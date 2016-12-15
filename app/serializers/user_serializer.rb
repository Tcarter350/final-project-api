class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :image
  has_many :posts

  def image
    object.image.url
  end
end
