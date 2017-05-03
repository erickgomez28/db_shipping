class CreateConsignees < ActiveRecord::Migration[5.0]
  def change
    create_table :consignees do |t|
      t.string :dni

      t.timestamps
    end
  end
end
