class Travel < ApplicationRecord
  belongs_to :origen, class_name: 'SeaPort'
  belongs_to :destination, class_name: 'SeaPort'
end
