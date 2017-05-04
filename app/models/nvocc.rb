class Nvocc < ApplicationRecord
  has_one :contact, :as => :contactable
  
  has_and_belongs_to_many :consignees

  has_many :bls_master, :class_name => 'BillOfLading', :as => :consigneable
  has_many :bls_house, :class_name => 'BillOfLading', :as => :consolidable
end
