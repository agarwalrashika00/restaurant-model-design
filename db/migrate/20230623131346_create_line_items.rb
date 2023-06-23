class CreateLineItems < ActiveRecord::Migration[7.0]
  def change
    create_table :line_items do |t|
      t.references :order
      t.references :food_item
      t.integer :price

      t.timestamps
    end
  end
end
