class AddStateIdToCities < ActiveRecord::Migration
  def change
    add_column :cities, :state_id, :string
  end
end
