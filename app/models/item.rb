class Item < ApplicationRecord
  belongs_to :menus

  validates :name, presence: true, uniqueness: true
end
