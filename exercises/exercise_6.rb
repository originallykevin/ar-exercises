require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)

@store1.employees.create([
  {first_name: "John", last_name: "Doe", hourly_rate: 30},
  {first_name: "Jane", last_name: "Smith", hourly_rate: 35},
  {first_name: "Nori", last_name: "Cet", hourly_rate: 9001}
])

@store2.employees.create([
  {first_name: "Alice", last_name: "Summer", hourly_rate: 31},
  {first_name: "Charlie", last_name: "Winter", hourly_rate: 28}
])

# another way to create an other employee
Employee.create(
  {store_id: 1, first_name: "Test", last_name: "Create", hourly_rate: 30}
)