class CreateSiteSizes < ActiveRecord::Migration
  def change
    create_table :site_sizes do |t|
      t.integer :site_id
      t.integer :size_id

      t.timestamps null: false
    end
  end
end
