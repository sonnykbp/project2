class Dessert < ApplicationRecord
  has_many :recipes, dependent: :destroy
end
