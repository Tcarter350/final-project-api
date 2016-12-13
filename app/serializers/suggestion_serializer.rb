class SuggestionSerializer < ActiveModel::Serializer
  attributes :id, :image, :link, :price
  has_one :post

  def image
    object.image.url
  end
end
