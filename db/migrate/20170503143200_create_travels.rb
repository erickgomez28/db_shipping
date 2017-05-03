class CreateTravels < ActiveRecord::Migration[5.0]
  def change
    create_table :travels do |t|
      t.string :code
      t.date :docking_date
      t.references :origen, index: true
      t.references :destination, index: true

      t.timestamps
    end
  end
end
