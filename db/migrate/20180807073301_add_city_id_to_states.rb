class AddCityIdToStates < ActiveRecord::Migration
  def change
    add_column :states, :city_id, :integer
  end
end
