class Recipe < ApplicationRecord
  belongs_to :dessert
  belongs_to :user

  has_many :favorites
  has_many :reviews
  has_many :users, through: :favorites

  validates :name, :description, :ingredients, :direction, :preptime, :cooktime, :recipe_image, presence: true
end
