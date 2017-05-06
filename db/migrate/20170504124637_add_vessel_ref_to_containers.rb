class AddVesselRefToContainers < ActiveRecord::Migration[5.0]
  def change
    add_reference :containers, :vessel, foreign_key: true
  end
end
