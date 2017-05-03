class Country < ApplicationRecord
  has_many :sea_ports, dependent: :destroy
end
