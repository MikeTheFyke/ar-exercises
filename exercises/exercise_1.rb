require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...

#Burnaby (annual_revenue: 300000, items: mens_apparel, womens_apparel)
#Richmond (annual_revenue: 1260000, items: womens_apparel)
#Gastown (annual_revenue: 190000, items: mens_apparel)

# Store 1. changed to Peterborough
Store.create(name: "Burnaby", annual_revenue: 300000, mens_apparel: true, womens_apparel: true )
Store.create(name: "Richmond", annual_revenue: 1260000, womens_apparel: true )
Store.create(name: "Gastown", annual_revenue: 190000, mens_apparel: true )

# Outputs (puts) the number of stores using ActiveRecord's
# count method, to ensure ther are only three stores in the DB.
puts Store.count