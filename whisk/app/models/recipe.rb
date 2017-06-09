class Recipe < ApplicationRecord
  belongs_to :dessert

  has_many :favorites
  has_many :users, through: :favorites
end
