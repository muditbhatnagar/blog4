class AddMonthlyChargeToUsers < ActiveRecord::Migration
  def change
    add_column :users, :monthly_charge, :decimal
  end
end
