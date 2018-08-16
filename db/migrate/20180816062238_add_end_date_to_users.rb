class AddEndDateToUsers < ActiveRecord::Migration
  def change
    add_column :users, :end_date, :datetime
  end
end
