require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...

# 1. Load the first store from the DB id = 1
@store1 = Store.find_by(id:1)
# 3. Update the fist store with another name
@store1.update(name: "Peterborough")
# 2. Load the second store from the DB and assign it to @store2
@store2 = Store.find_by(id:2)