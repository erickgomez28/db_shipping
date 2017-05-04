class CreateBillOfLadings < ActiveRecord::Migration[5.0]
  def change
    create_table :bill_of_ladings do |t|
      t.string :code
      t.references :travel, foreign_key: true
      t.references :consigneable, polymorphic: true, index: true
      t.references :consolidable, polymorphic: true, index: true

      t.timestamps
    end
  end
end
