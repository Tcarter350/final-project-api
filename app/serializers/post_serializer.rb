class PostSerializer < ActiveModel::Serializer
  attributes :id, :image, :caption
  has_many :suggestions
  has_many :categories
  belongs_to :user

  def image
    object.image.url
  end

end
