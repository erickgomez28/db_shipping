class Container < ApplicationRecord
  belongs_to :kind, class_name: 'ContainerKind'
  belongs_to :shipping_company
end
