class FoodItem < ApplicationRecord

  has_many :restaurant_food_items, dependent: :destroy
  has_many :restaurants, through: :restaurant_food_items
  has_many :parent_combos, dependent: :destroy, class_name: 'ComboFood'
  has_many :combos, through: :parent_combos
  has_many :combo_foods, dependent: :destroy, foreign_key: 'combo_id'
  has_many :child_food_items, through: :combo_foods, source: :food_item
  has_many :line_items, dependent: :destroy

end
