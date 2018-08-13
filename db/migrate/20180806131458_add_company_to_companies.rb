class AddCompanyToCompanies < ActiveRecord::Migration
  def change
    add_column :companies, :company, :string
  end
end
