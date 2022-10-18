require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
Store.create([
  {name:"Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true},
  {name:"Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false},
  {name:"Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true}
]);

# stores that carry men's apparel
@mens_stores = Store.where(mens_apparel:true)
# stores that carry women's apparel and <1M annual revenue
@womens_stores = Store.where("womens_apparel = true and annual_revenue < 1000000")

for index in @mens_stores do
  puts "Mens store - name: #{index.name}, annual_revenue: #{index.annual_revenue}" 
end

for index in @womens_stores do
  puts "Womens store < 1M - name: #{index.name}, annual_revenue: #{index.annual_revenue}"
end