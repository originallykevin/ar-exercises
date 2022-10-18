require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

# output total revenue of entire company (all stores)
@total_revenue = Store.sum(:annual_revenue)
puts @total_revenue

# output average annual revenue for all stores
@avg_revenue = Store.average(:annual_revenue)
puts @avg_revenue

# output number of stores that generate >= 1M
@over_mill_stores = Store.where("annual_revenue >= 1000000")
puts @over_mill_stores.count

