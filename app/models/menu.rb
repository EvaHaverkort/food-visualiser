class Menu < ApplicationRecord
  belongs_to :restaurants
  has_many :items

  validates :name, presence: true
  # validate the menu price
end
