class BillOfLading < ApplicationRecord
  belongs_to :travel
  belongs_to :consigneable, :polymorphic => true
  belongs_to :consolidable, :polymorphic => :true
end
