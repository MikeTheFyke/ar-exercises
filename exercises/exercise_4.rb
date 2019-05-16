require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...

#Surrey (annual_revenue: 300000, mens_apparel: false, womens_apparel: true)
#Whistler (annual_revenue: 1260000, mens_apparel: false, womens_apparel: false)
#Yaletown (annual_revenue: 190000, mens_apparel: true, womens_apparel: true)

# 1. Create 3 more stores
Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true )
Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: false, womens_apparel: false )
Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true )

# 2. Using ActiveRecords where class method, fetch a collection
# of stores that only carry men's apparel assign the results to a
# variable @mens_stores
@mens_stores = Store.where(mens_apparel: true)

# 3. Loop through each of these store from step 2. and output their name and revenue
# on each line
@mens_stores.each do |store|
  puts "Store: #{store[:name]}, Annual Revenue: #{store[:annual_revenue]}"
end

#4. Do another fetch and load the stores that carry womens apparel and have less than
# $1Million in annual revenue
@womens_stores = Store.where(womens_apparel: true, annual_revenue: 0..1000000)


# outputs Peterborugh and Yaletown