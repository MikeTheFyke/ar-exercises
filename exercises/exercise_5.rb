require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
# Excercise 5 : Calculations

# 1. Using ActiveRecords sum calculation method output the total revenue
# for the entire company. (all stores)
puts "The total revenue: #{Store.sum(:annual_revenue)}"
# 2. Using ActiveRecords average method output average annual revenue
# for the entire company. (all stores)
puts "The average revenue: #{Store.average(:annual_revenue)}"
# 3. Output by chaining together where and size(or count) ActiveRecords methods,
# all stores that are generating $1Million or more in annual sales.
puts "With a $1Million or more  in annual sales : #{Store.where("annual_revenue > 1000000").count} stores"

 # The total revenue: 4114000
 # The average revenue: 822800.0
 # Outputs 2 stores total