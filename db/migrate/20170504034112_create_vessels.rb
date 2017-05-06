class CreateVessels < ActiveRecord::Migration[5.0]
  def change
    create_table :vessels do |t|
      t.string :name
      t.string :container_quota
      t.belongs_to :shipping_company, foreign_key: true
      t.references :travel, foreign_key: true

      t.timestamps
    end
  end
end
