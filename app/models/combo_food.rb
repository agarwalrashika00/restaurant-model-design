class ComboFood < ApplicationRecord

  belongs_to :food_item
  belongs_to :combo, class_name: 'FoodItem'

  validate :food_item_is_not_combo
  validate :belongs_to_combo

  private

  def food_item_is_not_combo
    if food_item.type == 'Combo'
      errors.add :base, 'Food Item must not be a combo'
    end
  end

  def belongs_to_combo
    unless combo.type == 'Combo'
      errors.add :base, 'must belong to a combo'
    end
  end

end
