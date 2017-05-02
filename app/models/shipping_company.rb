class ShippingCompany < ApplicationRecord
  has_one :contact, as: :contactable
  has_many :phones, through: :contact, foreign_type: 'ShippingCompany'	
end
