class DescriptionOfGood < ApplicationRecord
  belongs_to :consignee

  has_one :container, :foreign_key => 'goods_id'
end
