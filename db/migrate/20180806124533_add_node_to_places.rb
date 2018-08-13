class AddNodeToPlaces < ActiveRecord::Migration
  def change
    add_column :places, :node, :string
  end
end
