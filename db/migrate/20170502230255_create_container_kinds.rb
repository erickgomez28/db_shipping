class CreateContainerKinds < ActiveRecord::Migration[5.0]
  def change
    create_table :container_kinds do |t|
      t.string :kind

      t.timestamps
    end
  end
end
