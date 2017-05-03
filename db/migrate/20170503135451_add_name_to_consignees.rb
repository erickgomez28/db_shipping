class AddNameToConsignees < ActiveRecord::Migration[5.0]
  def change
    add_column :consignees, :name, :string
  end
end
