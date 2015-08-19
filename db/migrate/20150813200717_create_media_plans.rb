class CreateMediaPlans < ActiveRecord::Migration
  def change
    create_table :media_plans do |t|
      t.text :objective
      t.string :title

      t.timestamps null: false
    end
  end
end
