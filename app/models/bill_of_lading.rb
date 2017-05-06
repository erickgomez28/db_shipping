class BillOfLading < ApplicationRecord
  belongs_to :travel
  belongs_to :consigneable, :polymorphic => true
  belongs_to :consolidable, :polymorphic => :true

  has_one :vessel, :through => :travel
  has_many :containers, through => :vessel
end
