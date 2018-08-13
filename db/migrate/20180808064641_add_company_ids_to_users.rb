class AddCompanyIdsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :company_ids, :string
  end
end
