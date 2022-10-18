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

# Ask the user for a store name (store it in a variable)
puts "Please enter store name"
@store_name = gets.chomp

@new_store = Store.create({name:"@store_name"})

 # Display the error messages provided back from ActiveRecord to the user (one on each line) after you attempt to save/create the record
if @new_store.errors
  # loop through errors.full_messages instead of errors because there are many values in errors object
  @new_store.errors.full_messages.each do |error| 
    puts error
  end
end