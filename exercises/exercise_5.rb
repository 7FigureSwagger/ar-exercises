require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
@total_revenue = Store.sum("annual_revenue")
puts "Total revenue for all stores is: #{@total_revenue}"

@average_revenue = @total_revenue / Store.count
puts "Average revenue per sotre is: #{@average_revenue}"

@well_performers = Store.where("annual_revenue > 1000000").count
puts "Number of stores with annual revenue of over 1M: #{@well_performers}"