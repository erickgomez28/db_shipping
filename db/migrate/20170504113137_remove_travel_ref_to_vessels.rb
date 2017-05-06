class RemoveTravelRefToVessels < ActiveRecord::Migration[5.0]
  def change
    remove_reference :vessels, :travel, foreign_key: true
  end
end
