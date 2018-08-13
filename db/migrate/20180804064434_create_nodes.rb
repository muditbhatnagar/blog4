class CreateNodes < ActiveRecord::Migration
  def change
    create_table :nodes do |t|
      t.string :node_name
      t.integer :place_id

      t.timestamps null: false
    end
  end
end
