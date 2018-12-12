class AddCsvIdToWarehouses < ActiveRecord::Migration[5.2]
  def change
    add_column :warehouses, :csv_id, :string
  end
end
