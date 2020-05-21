# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
require 'csv'

CSV.foreach(Rails.root.join('fish_export.csv'), headers: true) do |row|

  Fish.create({
                  name: row[0],
                  sell_value_cents: Money.new(row[1]),
                  location: row[2],
                  active_hours: row[3],
                  active_months: row[4],
                  shadow_size: row[5]

              })
end
