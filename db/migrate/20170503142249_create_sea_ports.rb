class CreateSeaPorts < ActiveRecord::Migration[5.0]
  def change
    create_table :sea_ports do |t|
      t.string :name
      t.string :code
      t.references :country, foreign_key: true

      t.timestamps
    end
  end
end
