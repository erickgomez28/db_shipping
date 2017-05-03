class CreateJoinTableConsigneesNvoccs < ActiveRecord::Migration[5.0]
  def change
    create_join_table :consignees, :nvoccs do |t|
      t.index [:consignee_id, :nvocc_id]
      t.index [:nvocc_id, :consignee_id]
    end
  end
end
