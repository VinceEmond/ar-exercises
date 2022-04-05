require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "\nExercise 3"
puts "----------\n\n"

@store3 = Store.find_by(id: 3)
@store3.destroy

puts "\nTotal number of stores: #{Store.count}\n"
