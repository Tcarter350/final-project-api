class Suggestion < ApplicationRecord
  belongs_to :post
  # validates :suggestions, count: {maximum: 3}
  #
  # def cant_have_more_than_three_suggestions
  #   put
  #   return unless Post.count >
  #
  #   end
  # end

  mount_uploader :image, ImageUploader
end
