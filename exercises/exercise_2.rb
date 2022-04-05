require_relative '../setup'
require_relative './exercise_1'

puts "\nExercise 2"
puts "----------\n\n"


@store1 = Store.find_by(id: 1)
# puts @store1.name 

@store2 = Store.find_by(id: 2)

@store1.update(name: 'Squamish')

# @store1.name = "Squamish"
# @store1.save

