# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

exercise_types = ["Pilates","Yoga", "Cardio", "Weight Training", "Squats", "Push-Ups",
                  "Bicycling", "Kayaking"]

exercise_types.sort!
exercise_types.each do |type|
  ExerciseType.create!(name: type)
end
