# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'rest-client' 
require 'json'

User.destroy_all
puts "Destroying Users"
Exercise.destroy_all
puts "Destroying Exercises"
Workout.destroy_all
puts "Destroying Workouts"
Stat.destroy_all
puts "Destroying Stats"
Appointment.destroy_all
puts "Destroying Appointments"
ExerciseWorkout.destroy_all
puts "Destroying Joins"


User.create!(name: "Mary Rachael Koenke", age: 35, weight: 125, height: 64, username: "mkoenke", password: "mkoenke")
User.create!(name: "Jomarie Polanco", age: 27, weight: 145, height: 70, username: "joey",  password: "12345")
puts "Users seeded"

api_response = RestClient.get("https://wger.de/api/v2/exercise/?language=2")
api_data = JSON.parse(api_response)

api_data['results'].each do |exercise|
    Exercise.create!(
        name: exercise['name'],
        description: exercise['description']
    )
end
puts "Exercises Seeded"

Workout.create!( kind: "Killer Leg Workout", user_id: User.all.sample.id)
Workout.create!(kind: "Olympic Wightlifting Progression 1", user_id: User.all.sample.id)
Workout.create!(kind: "Olympic Weightlifting Progression 2", user_id: User.all.sample.id)
Workout.create!(kind: "Death By Squats", user_id: User.all.sample.id)
Workout.create!(kind: "Assessory Day", user_id: User.all.sample.id)

# jo's workouts
Workout.create!(kind: "Beginner Leg Workout", user_id: User.all.sample.id)
Workout.create!(kind: "Rower's Back Workout", user_id: User.all.sample.id)
Workout.create!(kind: "Full Body Blaster", user_id: User.all.sample.id)
Workout.create!(kind: "Arms Arms Arms", user_id: User.all.sample.id)
Workout.create!(kind: "Abs for Days", user_id: User.all.sample.id)

puts "Workouts seeded"

Stat.create!(user_id: User.all.sample.id, exercise_id: Exercise.all.sample.id , weight: 185, comment: "PR Clean and Jerk! Yay!")
Stat.create!(user_id: User.all.sample.id, exercise_id: Exercise.all.sample.id, weight: 275, comment: "Feeling strong!")
Stat.create!(user_id: User.all.sample.id, exercise_id: Exercise.all.sample.id, weight: 275, comment: "My legs hurt!!")
Stat.create!(user_id: User.all.sample.id, exercise_id: Exercise.all.sample.id, weight: 235, comment: "I grinded through it, but I did it!")
Stat.create!(user_id: User.all.sample.id, exercise_id: Exercise.all.sample.id, weight: 195, comment: "Gotta catch my jerk up to this weight!")
Stat.create!(user_id: User.all.sample.id, exercise_id: Exercise.all.sample.id, weight: 145, comment: "Finally!!!!")

Stat.create!(user_id: User.all.sample.id, exercise_id: Exercise.all.sample.id, weight: 185, comment: "Feels good to be back in the gym!")
Stat.create!(user_id: User.all.sample.id, exercise_id: Exercise.all.sample.id, weight: 190, comment: "Tough, but I feel amazing.")
Stat.create!(user_id: User.all.sample.id, exercise_id: Exercise.all.sample.id, weight: 150, comment: "🍑🍑🍑🍑🍑🍑🍑🍑🍑🍑")
Stat.create!(user_id: User.all.sample.id, exercise_id: Exercise.all.sample.id, weight: 65, comment: "My arms are jelly")
Stat.create!(user_id: User.all.sample.id, exercise_id: Exercise.all.sample.id, weight: 225, comment: "My favorite!")
puts "Stats seeded"

Appointment.create!(date: Date.new(2020, 11, 8), time: Time.now, workout_id: Workout.all.sample.id, user_id: User.all.sample.id, location: "Garage" )
Appointment.create!(date: Date.new(2020, 11, 9), time: Time.now, workout_id: Workout.all.sample.id, user_id: User.all.sample.id, location: "Mid City Gym" )
Appointment.create!(date: Date.new(2020, 11, 10), time: Time.now, workout_id: Workout.all.sample.id, user_id: User.all.sample.id, location: "Garage" )
Appointment.create!(date: Date.new(2020, 11, 13), time: Time.now, workout_id: Workout.all.sample.id, user_id: User.all.sample.id, location: "Mid City Gym" )
Appointment.create!(date: Date.new(2020, 11, 15), time: Time.now, workout_id: Workout.all.sample.id, user_id: User.all.sample.id, location: "Garage" )


#jo's appointments
Appointment.create!(date: Date.new(2020, 11, 16), time: Time.new(2020, 11, 15, 6, 0, 0), workout_id: Workout.all.sample.id, user_id: User.all.sample.id, location: "Home Gym")
Appointment.create!(date: Date.new(2020, 11, 17), time: Time.new(2020, 11, 15, 6, 0, 0), workout_id: Workout.all.sample.id, user_id: User.all.sample.id, location: "F45")
Appointment.create!(date: Date.new(2020, 11, 18), time: Time.new(2020, 11, 15, 7, 0, 0), workout_id: Workout.all.sample.id, user_id: User.all.sample.id, location: "Home Gym")
Appointment.create!(date: Date.new(2020, 11, 19), time: Time.new(2020, 11, 15, 13, 0, 0), workout_id: Workout.all.sample.id, user_id: User.all.sample.id, location: "F45")
Appointment.create!(date: Date.new(2020, 11, 20), time: Time.new(2020, 11, 15, 18, 0, 0), workout_id: Workout.all.sample.id, user_id: User.all.sample.id, location: "F45")

puts "Appointments seeded"

ExerciseWorkout.create!(workout_id: Workout.all.sample.id , exercise_id: Exercise.all.sample.id, sets: 3 , reps: 10)
ExerciseWorkout.create!(workout_id: Workout.all.sample.id , exercise_id: Exercise.all.sample.id, sets: 5 , reps: 10)
ExerciseWorkout.create!(workout_id: Workout.all.sample.id , exercise_id: Exercise.all.sample.id, sets: 3 , reps: 20)
ExerciseWorkout.create!(workout_id: Workout.all.sample.id , exercise_id: Exercise.all.sample.id, sets: 4 , reps: 15)
ExerciseWorkout.create!(workout_id: Workout.all.sample.id , exercise_id: Exercise.all.sample.id, sets: 3 , reps: 20)
ExerciseWorkout.create!(workout_id: Workout.all.sample.id, exercise_id: Exercise.all.sample.id, sets: 8 , reps: 1)
ExerciseWorkout.create!(workout_id: Workout.all.sample.id, exercise_id: Exercise.all.sample.id, sets: 3 , reps: 3)
ExerciseWorkout.create!(workout_id: Workout.all.sample.id, exercise_id: Exercise.all.sample.id, sets: 5 , reps: 5)
ExerciseWorkout.create!(workout_id: Workout.all.sample.id, exercise_id: Exercise.all.sample.id, sets: 5 , reps: 2)
ExerciseWorkout.create!(workout_id: Workout.all.sample.id, exercise_id: Exercise.all.sample.id, sets: 5 , reps: 5)
ExerciseWorkout.create!(workout_id: Workout.all.sample.id, exercise_id: Exercise.all.sample.id, sets: 8 , reps: 1)
ExerciseWorkout.create!(workout_id: Workout.all.sample.id, exercise_id: Exercise.all.sample.id, sets: 5 , reps: 3)
ExerciseWorkout.create!(workout_id: Workout.all.sample.id, exercise_id: Exercise.all.sample.id, sets: 5 , reps: 2)
ExerciseWorkout.create!(workout_id: Workout.all.sample.id, exercise_id: Exercise.all.sample.id, sets: 4 , reps: 2)
ExerciseWorkout.create!(workout_id: Workout.all.sample.id, exercise_id: Exercise.all.sample.id, sets: 5 , reps: 5)
ExerciseWorkout.create!(workout_id: Workout.all.sample.id, exercise_id: Exercise.all.sample.id, sets: 3 , reps: 10)
ExerciseWorkout.create!(workout_id: Workout.all.sample.id, exercise_id: Exercise.all.sample.id, sets: 5 , reps: 3)
ExerciseWorkout.create!(workout_id: Workout.all.sample.id, exercise_id: Exercise.all.sample.id, sets: 3 , reps: 10)
ExerciseWorkout.create!(workout_id: Workout.all.sample.id, exercise_id: Exercise.all.sample.id, sets: 5 , reps: 5)
ExerciseWorkout.create!(workout_id: Workout.all.sample.id, exercise_id: Exercise.all.sample.id, sets: 3 , reps: 10)
ExerciseWorkout.create!(workout_id: Workout.all.sample.id, exercise_id: Exercise.all.sample.id, sets: 3 , reps: 10)
ExerciseWorkout.create!(workout_id: Workout.all.sample.id, exercise_id: Exercise.all.sample.id, sets: 3 , reps: 10)
ExerciseWorkout.create!(workout_id: Workout.all.sample.id, exercise_id: Exercise.all.sample.id, sets: 3 , reps: 20)
ExerciseWorkout.create!(workout_id: Workout.all.sample.id, exercise_id: Exercise.all.sample.id, sets: 5 , reps: 5)
ExerciseWorkout.create!(workout_id: Workout.all.sample.id, exercise_id: Exercise.all.sample.id, sets: 3 , reps: 10)

#jo's exerciseworkouts
ExerciseWorkout.create!(workout_id: Workout.all.sample.id, exercise_id: Exercise.all.sample.id, sets: 3, reps: 20)
ExerciseWorkout.create!(workout_id: Workout.all.sample.id, exercise_id: Exercise.all.sample.id, sets: 3, reps: 12)
ExerciseWorkout.create!(workout_id: Workout.all.sample.id, exercise_id: Exercise.all.sample.id, sets: 3, reps: 12)
ExerciseWorkout.create!(workout_id: Workout.all.sample.id, exercise_id: Exercise.all.sample.id, sets: 3, reps: 20)

ExerciseWorkout.create!(workout_id: Workout.all.sample.id, exercise_id: Exercise.all.sample.id, sets: 3, reps: 12)
ExerciseWorkout.create!(workout_id: Workout.all.sample.id, exercise_id: Exercise.all.sample.id, sets: 3, reps: 12)
ExerciseWorkout.create!(workout_id: Workout.all.sample.id, exercise_id: Exercise.all.sample.id, sets: 3, reps: 12)
ExerciseWorkout.create!(workout_id: Workout.all.sample.id, exercise_id: Exercise.all.sample.id, sets: 3, reps: 12)

ExerciseWorkout.create!(workout_id: Workout.all.sample.id, exercise_id: Exercise.all.sample.id, sets: 3, reps: 20)
ExerciseWorkout.create!(workout_id: Workout.all.sample.id, exercise_id: Exercise.all.sample.id, sets: 3, reps: 12)
ExerciseWorkout.create!(workout_id: Workout.all.sample.id, exercise_id: Exercise.all.sample.id, sets: 3, reps: 15)
ExerciseWorkout.create!(workout_id: Workout.all.sample.id, exercise_id: Exercise.all.sample.id, sets: 3, reps: 20)
ExerciseWorkout.create!(workout_id: Workout.all.sample.id, exercise_id: Exercise.all.sample.id, sets: 3, reps: 12)

ExerciseWorkout.create!(workout_id: Workout.all.sample.id, exercise_id: Exercise.all.sample.id, sets: 3, reps: 20)
ExerciseWorkout.create!(workout_id: Workout.all.sample.id, exercise_id: Exercise.all.sample.id, sets: 3, reps: 20)
ExerciseWorkout.create!(workout_id: Workout.all.sample.id, exercise_id: Exercise.all.sample.id, sets: 3, reps: 20)


ExerciseWorkout.create!(workout_id: Workout.all.sample.id, exercise_id: Exercise.all.sample.id, sets: 3, reps: 20)
ExerciseWorkout.create!(workout_id: Workout.all.sample.id, exercise_id: Exercise.all.sample.id, sets: 3, reps: 12)
ExerciseWorkout.create!(workout_id: Workout.all.sample.id, exercise_id: Exercise.all.sample.id, sets: 3, reps: 15)
ExerciseWorkout.create!(workout_id: Workout.all.sample.id, exercise_id: Exercise.all.sample.id, sets: 3, reps: 15)
puts "ExerciseWorkout seeded"


