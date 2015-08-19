class CreateCostStructures < ActiveRecord::Migration
  def change
    create_table :cost_structures do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
