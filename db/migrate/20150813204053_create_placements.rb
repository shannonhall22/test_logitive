class CreatePlacements < ActiveRecord::Migration
  def change
    create_table :placements do |t|
      t.string :name
      t.datetime :start_date
      t.datetime :end_date
      t.integer :impressions
      t.integer :cpm_cost
      t.integer :cpc_cost
      t.integer :total_cost

      t.timestamps null: false
    end
  end
end
