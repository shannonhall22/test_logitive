class CreateSiteCostStuctures < ActiveRecord::Migration
  def change
    create_table :site_cost_stuctures do |t|
      t.integer :site_id
      t.integer :cost_structure_id

      t.timestamps null: false
    end
  end
end
