class ContainerKind < ApplicationRecord
	has_many :containers, foreign_key: 'kind_id'
end
