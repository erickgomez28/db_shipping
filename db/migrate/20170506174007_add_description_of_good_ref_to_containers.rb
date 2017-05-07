class AddDescriptionOfGoodRefToContainers < ActiveRecord::Migration[5.0]
  def change
    add_reference :containers, :goods, index: true
  end
end
