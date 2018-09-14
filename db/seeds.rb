# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'
CSV.foreach(Rails.root.join("db/floors.csv"), headers: true) do
    |row|
    Floor.find_or_create_by(name: row[0], quantity: row[1], price: row[2], description: row[3], photo_url: row[4])
end