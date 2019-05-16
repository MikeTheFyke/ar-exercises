require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...

# Excercise 7. Validations for both models.

# 2. Ask the user for a stores name.
puts "Please enter a new stores name : "
  store_name = gets.chomp

# 3. Attempt to create a store with the inputted name but leave out
# the other fields (annual_revenue, mens_apparel, womens_apparel)
@new_Store = Store.create(name: "#{store_name}")

# 4. Using ActiveRecord display an error message to the user (one line each)
# after you save/create the record.
if @new_Store.errors.any?
  @new_Store.errors.each do |errattribute, errmessage|
    puts "Warning Doctor Smith Error : #{errattribute} #{errmessage}. Try again next time."
  end
end

# Outputs
# Warning Doctor Smith Error : annual_revenue can't be blank. Try again next time.
# Warning Doctor Smith Error : annual_revenue is not a number. Try again next time.