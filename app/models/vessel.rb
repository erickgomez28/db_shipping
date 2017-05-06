class Vessel < ApplicationRecord
  belongs_to :shipping_company
  has_one :travel
  has_many :containers
end
