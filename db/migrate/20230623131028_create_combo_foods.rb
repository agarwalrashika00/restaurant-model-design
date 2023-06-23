class CreateComboFoods < ActiveRecord::Migration[7.0]
  def change
    create_table :combo_foods do |t|
      t.references :combo_id
      t.references :food_id

      t.timestamps
    end
  end
end
