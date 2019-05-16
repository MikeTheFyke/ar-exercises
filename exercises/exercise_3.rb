require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "Exercise 3"
puts "----------"

# Your code goes here ...

# 1. Load the third store into store3 like the two before.
@store3 = Store.find_by(id:3)
# 2. Using ActiveRecords destroy method deletes store from the database.
@store3.destroy
# 3. verify the store has been deleted by again outputting
# (puts) the count like excercise 1.
puts Store.count