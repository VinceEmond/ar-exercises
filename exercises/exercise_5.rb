require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "\nExercise 5"
puts "----------\n\n"

puts "\nThe total sum of annual revenue of all stores is: $#{Store.sum(:annual_revenue)}"

puts "\n The average revenue for all stores is #{Store.average(:annual_revenue).to_i}"

# @top_earners = Store.where(annual_revenue: 1000000..Float::INFINITY)

# @top_earners.each do |store|
#   puts "#{store.name}: #{store.annual_revenue}"
# end


# puts Store.where(annual_revenue: 1000000..Float::INFINITY).count
puts Store.where("annual_revenue >= 1000000").count

# @womens_stores = Store.where("womens_apparel = true AND annual_revenue < 1000000")