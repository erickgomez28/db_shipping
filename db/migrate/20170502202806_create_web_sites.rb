class CreateWebSites < ActiveRecord::Migration[5.0]
  def change
    create_table :web_sites do |t|
      t.string :web_site
      t.belongs_to :contact, foreign_key: true

      t.timestamps
    end
  end
end
