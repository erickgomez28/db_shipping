class AddVesselRefToTravels < ActiveRecord::Migration[5.0]
  def change
    add_reference :travels, :vessel, foreign_key: true
  end
end
