class Order < ApplicationRecord

  belongs_to :user
  has_many :line_items, dependent: :destroy
  has_many :food_items, through: :line_items

end
