class AddAddressToWarehouses < ActiveRecord::Migration[5.2]
  def change
    add_column :warehouses, :address, :string
  end
end
