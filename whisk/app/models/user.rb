class User < ApplicationRecord
  has_many :favorites
  has_many :recipes, through: :favorites
  has_many :user_recipes, foreign_key: "user_id", class_name: "Recipe"
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
