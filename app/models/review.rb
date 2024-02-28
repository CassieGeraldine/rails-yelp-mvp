class Review < ApplicationRecord
  #A restaurant’s category must belong to this fixed list: ["chinese", "italian", "japanese", "french", "belgian"].
  belongs_to :restaurant
  validates :content, :rating, presence: true
  validates :rating, inclusion:{in: 0..5 },numericality: {only_integer: true}
end
