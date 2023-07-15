class RestaurantFoodItem < ApplicationRecord

  belongs_to :restaurant
  belongs_to :food_item

  enum :status, {available: 0, unavailable: 1}

  after_create_commit :add_food_to_menu

  private

  def add_food_to_menu
    restaurant.food_sorting_order << food_item.id
    restaurant.save
  end

end
