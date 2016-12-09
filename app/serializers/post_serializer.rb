class PostSerializer < ActiveModel::Serializer
  attributes :id, :image, :caption
  has_one :user
end
