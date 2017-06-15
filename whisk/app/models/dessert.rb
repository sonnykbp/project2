class Dessert < ApplicationRecord
  has_many :recipes, dependent: :destroy
  validates :name, :dessert_image, presence: true
end
