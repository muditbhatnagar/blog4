class CreateUserRegions < ActiveRecord::Migration
  def change
    create_table :user_regions do |t|
      t.integer :user_id
      t.integer :region_id

      t.timestamps null: false
    end
  end
end
