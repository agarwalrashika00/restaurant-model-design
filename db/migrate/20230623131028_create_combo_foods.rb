class CreateComboFoods < ActiveRecord::Migration[7.0]
  def change
    create_table :combo_foods do |t|
      t.references :combo
      t.references :food_item

      t.timestamps
    end
  end
end
