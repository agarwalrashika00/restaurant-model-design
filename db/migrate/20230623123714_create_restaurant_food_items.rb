class CreateRestaurantFoodItems < ActiveRecord::Migration[7.0]
  def change
    create_table :restaurant_food_items do |t|
      t.references :restaurant
      t.references :food_item
      t.integer :status
      t.integer :price

      t.timestamps
    end
  end
end
