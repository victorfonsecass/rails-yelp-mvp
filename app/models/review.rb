class Review < ApplicationRecord
  belongs_to :restaurant # ISSO AQ É LIGAÇÃO ENTRE MODELS.  TIVE QUE CRIAR FOREIGN KEY NO MIGRATE

  validates :content, :rating, presence: true
  validates :rating, :inclusion => { :in => 0..5 },
   :numericality => { :only_integer => true } # só numeros inteiros
end
# A review must belong to a restaurant.
# A review must have content and a rating.
# A review’s rating must be a number between 0 and 5.
