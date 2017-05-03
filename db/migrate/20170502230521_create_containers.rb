class CreateContainers < ActiveRecord::Migration[5.0]
  def change
    create_table :containers do |t|
      t.references :kind, index: true
      t.string :distinctive
      t.belongs_to :shipping_company, foreign_key: true

      t.timestamps
    end
  end
end
