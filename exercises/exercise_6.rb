require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "\nExercise 6"
puts "----------\n\n"


@store1.employees.create(first_name: "Vince", last_name: "Emond", hourly_rate: 69)
@store1.employees.create(first_name: "Andy", last_name:"Bernard", hourly_rate:420)
@store1.employees.create(first_name: "Jackie", last_name: "Voost", hourly_rate: 22)

@store2.employees.create(first_name: "Steph", last_name: "Sinclair", hourly_rate: 52)
@store2.employees.create(first_name: "Tom", last_name: "Brown", hourly_rate: 96)
@store2.employees.create(first_name: "Frank", last_name: "Paul", hourly_rate: 100)

