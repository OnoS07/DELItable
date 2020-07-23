class Ingredient < ApplicationRecord
  belongs_to :recipe

  validates :content, presence:true ,length:{maximum: 15}
  validates :amount, presence:true ,length:{maximum: 10}
end
