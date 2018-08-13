class AddRoleIdsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :role_ids, :string
  end
end
