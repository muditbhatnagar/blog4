class AddActivebitToUsers < ActiveRecord::Migration
  def change
    add_column :users, :activebit, :boolean
  end
end
