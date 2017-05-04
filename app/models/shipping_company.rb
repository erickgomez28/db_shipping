class ShippingCompany < ApplicationRecord
  has_one :contact, as: :contactable

  has_many :phones, through: :contact, foreign_type: 'ShippingCompany'	
  has_many :bls, :class_name => 'BillOfLading', :as => :consolidable
end
