class AddCountryIdToStates < ActiveRecord::Migration
  def change
    add_column :states, :country_id, :string
  end
end
