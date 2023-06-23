class Restaurant < ApplicationRecord

  serialize :food_sorting_order, Array

  has_many :restaurant_food_items, dependent: :destroy
  has_many :food_items, through: :restaurant_food_items

end
