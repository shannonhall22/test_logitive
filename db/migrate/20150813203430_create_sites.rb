class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.string :url
      t.integer :publisher_id
      t.integer :placement_id

      t.timestamps null: false
    end
  end
end
