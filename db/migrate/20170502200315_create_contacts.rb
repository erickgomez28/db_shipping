class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.references :contactable, polymorphic: true, index: true

      t.timestamps
    end
  end
end
