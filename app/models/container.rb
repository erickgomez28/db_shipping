class Container < ApplicationRecord
  belongs_to :kind, :class_name => 'ContainerKind'
  belongs_to :shipping_company

  belongs_to :goods, :class_name => 'DescriptionOfGood'
end
