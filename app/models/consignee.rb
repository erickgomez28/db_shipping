class Consignee < ApplicationRecord
  has_one :contact, :as => :contactable
  
  has_and_belongs_to_many :nvoccs

  has_many :bls, :class_name => 'BillOfLading', :as => :consigneable
  has_many :goods, :class_name => 'DescriptionOfGood', :foreign_key => 'consignee_id'
end
