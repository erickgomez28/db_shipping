class CreateDescriptionOfGoods < ActiveRecord::Migration[5.0]
  def change
    create_table :description_of_goods do |t|
      t.string :details
      t.belongs_to :consignee, foreign_key: true

      t.timestamps
    end
  end
end
