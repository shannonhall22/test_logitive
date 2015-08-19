class CreateMediaPlanSites < ActiveRecord::Migration
  def change
    create_table :media_plan_sites do |t|
      t.integer :media_plan_id
      t.integer :site_id

      t.timestamps null: false
    end
  end
end
