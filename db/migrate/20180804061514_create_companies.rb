class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.integer :country_id
      t.integer :state_id
      t.integer :city_id
      t.string :postcode
      t.datetime :start_date
      t.boolean :activebit

      t.timestamps null: false
    end
  end
end
