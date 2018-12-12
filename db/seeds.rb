require 'csv'

file = 'db/warehouses.csv'
csv_options = { col_sep: ',', quote_char: '"', headers: :first_row }

puts "Seeding DB with CSV data..."
CSV.foreach(file, csv_options) do |row|
  Warehouse.create!(csv_id: row["id"], name: row["name"], location: row["location"],
    latitude: row["latitude"], longitude: row["longitude"], rating: row["rating"],
    temperature: row["temperature"], capacity_sq_ft: row["capacity_sq_ft"])
end

puts "Done!"
