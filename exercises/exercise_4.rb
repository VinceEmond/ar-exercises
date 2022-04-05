require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "\nExercise 4"
puts "----------\n\n"

# Surrey (annual_revenue of 224000, carries women's apparel only)
surrey = Store.create(name: 'Surrey', annual_revenue: 224000, mens_apparel: false, womens_apparel: true)

# Whistler (annual_revenue of 1900000 carries men's apparel only)
whistler = Store.create(name: 'Whistler', annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)

# Yaletown (annual_revenue of 430000 carries men's and women's apparel)
yaletown = Store.create(name: 'Yaletown', annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

puts "Number of stores: #{Store.count}"

@mens_stores = Store.where(mens_apparel: true)

@mens_stores.each do |store|
  puts "The #{store.name} store has an annual revenue of #{store.annual_revenue}"
end

# @womens_stores = Store.where("annual_revenue < ?", 1000000)
# @womens_stores = Store.where(annual_revenue: Float::INFINITY..1000000)

# @womens_stores_all = Store.where(womens_apparel: true)
# @womens_stores_all.each do |store|
#   puts "All stores: #{store.name}"
# end

@womens_stores = Store.where(annual_revenue: -Float::INFINITY...1000000, womens_apparel: true)

@womens_stores.each do |store|
  puts "Women's Store #{store.name} has a revenue of #{store.annual_revenue}"
end