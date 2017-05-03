class SeaPort < ApplicationRecord
  belongs_to :country

  has_many :origens, :class_name => 'SeaPort', :foreign_key => 'origen_id'
  has_many :destinations, :class_name => 'SeaPort', :foreign_key => 'destinations_id'
end
