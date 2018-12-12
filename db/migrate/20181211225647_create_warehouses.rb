class CreateWarehouses < ActiveRecord::Migration[5.2]
  def change
    create_table :warehouses do |t|
      t.string :name
      t.string :location
      t.float :latitude
      t.float :longitude
      t.float :rating
      t.string :temperature
      t.integer :capacity_sq_ft

      t.timestamps
    end
  end
end
