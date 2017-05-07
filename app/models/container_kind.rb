class ContainerKind < ApplicationRecord
  has_many :containers, class_name: 'Container', :foreign_key => 'kind_id'
end
