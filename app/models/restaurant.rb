 # no modelo fica validação(validates)/ link entre models (has_many)

class Restaurant < ApplicationRecord
  CATEGORIES = %w[chinese italian japanese french belgian].freeze
  # review tem a dependencia destroy
  has_many :reviews, dependent: :destroy #ligção entre models 
  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: CATEGORIES}
end
# A restaurant must have a name, an address and a category.
# A restaurant’s category must belong to this fixed list: ["chinese", "italian", "japanese", "french", "belgian"].
# When a restaurant is destroyed, all of its reviews must be destroyed as well.
