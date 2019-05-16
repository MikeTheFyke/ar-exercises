require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

# Excercise 6. One-to-many-association
# EX: @store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)


# Using ActiveRecords create method create employees for @store1 - Burnaby
@store1.employees.create(first_name: "Mike", last_name: "Fyke", hourly_rate: 50)
@store1.employees.create(first_name: "Maxwell", last_name: "Bentley", hourly_rate: 70)
@store1.employees.create(first_name: "Hermans", last_name: "Head", hourly_rate: 90)
@store1.employees.create(first_name: "Cletus", last_name: "Kasady", hourly_rate: 40)


# Using ActiveRecords create method create employees for @store2 - Richmond
@store2.employees.create(first_name: "Seamore", last_name: "Butts", hourly_rate: 99)
@store2.employees.create(first_name: "Boba", last_name: "Fett", hourly_rate: 60)
@store2.employees.create(first_name: "SirKillalot", last_name: "Rex", hourly_rate: 65)
@store2.employees.create(first_name: "Gern", last_name: "Blanstein", hourly_rate: 80)
