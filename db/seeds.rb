# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'rest-client' 
require 'json'

puts "Destroying Week"
Week.destroy_all
puts "Destroying Tracking"
Tracking.destroy_all
puts "Destroying Day"
Day.destroy_all
puts "Destroying Goal"
Goal.destroy_all
puts "Destroying Meal"
Meal.destroy_all
puts "Destroying MealDay"
MealDay.destroy_all
puts "Destroying Workout"
Workout.destroy_all
puts "Destroying WorkoutDay"
WorkoutDay.destroy_all

puts "Creating Weeks"
Week.create!(month: "December", number: 1)
Week.create!(month: "December", number: 2)
Week.create!(month: "December", number: 3)
Week.create!(month: "December", number: 4)
Week.create!(month: "January", number: 5)
Week.create!(month: "January", number: 6)
Week.create!(month: "January", number: 7)
Week.create!(month: "January", number: 8)

puts "Creating Trackings"
Tracking.create!(weight: 190, chest: 36, hips: 46, thigh: 25, waist: 30, arm: 14, week_id: Week.first.id)

puts "Creating Days"
Day.create!(day: "Monday", number: 7, week_id: Week.first.id)
Day.create!(day: "Tuesday", number: 8, week_id: Week.first.id)
Day.create!(day: "Wednesday", number: 9, week_id: Week.first.id)
Day.create!(day: "Thursday", number: 10, week_id: Week.first.id)
Day.create!(day: "Friday", number: 11, week_id: Week.first.id)
Day.create!(day: "Saturday", number: 12, week_id: Week.first.id)
Day.create!(day: "Sunday", number: 13, week_id: Week.first.id)

puts "Creating Goals"
Goal.create!(sleep: 8, nutrition: "1800 calories", hydration: 2500, steps: 10000, intentions: "workout for the first time in a month today! baby steps", reflections: "working out was good, the eating not so much", day_id: Day.first.id)
Goal.create!(sleep: 8, nutrition: "1800 calories", hydration: 2500, steps: 10000, intentions: "4 workouts this week", reflections: "working out was good, the eating not so much", day_id: Day.second.id)
Goal.create!(sleep: 8, nutrition: "1800 calories", hydration: 2500, steps: 10000, intentions: "so sore...but i'm gonna fit another in", reflections: "working out was good, the eating not so much", day_id: Day.third.id)
Goal.create!(sleep: 8, nutrition: "1800 calories", hydration: 2500, steps: 10000, intentions: "rest day", reflections: "working out was good, the eating not so much", day_id: Day.fourth.id)
Goal.create!(sleep: 8, nutrition: "1800 calories", hydration: 2500, steps: 10000, intentions: "why is diet so hard?!", reflections: "working out was good, the eating not so much", day_id: Day.fifth.id)
Goal.create!(sleep: 8, nutrition: "1800 calories", hydration: 2500, steps: 10000, intentions: "grocery shop and meal prep today", reflections: "working out was good, the eating not so much", day_id: Day.sixth.id)
Goal.create!(sleep: 8, nutrition: "1800 calories", hydration: 2500, steps: 10000, intentions: "meal prep", reflections: "working out was good, the eating not so much", day_id: Day.seventh.id)

puts "Creating Meals"
Meal.create!(name: "French Toast", calories: 514, protein: 31, fat: 21, carbs: 51, fiber: 8, ingredients: "bread, egg whites, milk, maple syrub, almond butter", flavor_boosters: "cinnamon", recipe: "Soak bread in eggs and milk. Cook in a pan on medium-heat. 2 minutes each side. Top with almond butter and syrup.")
Meal.create!(name: "Grilled Chicken Sweet Potato Salad", calories: 456, protein: 47, fat: 18, carbs: 25, fiber: 7, ingredients: "chicken breast, sweet potato, spring salad mix, oil, avocado", flavor_boosters: "balsamic vinegar", recipe: "Roast the sweet potatoes in the oven. Bake the chicken breast. Mix all ingredients in a bowl.")
Meal.create!(name: "Turkey Stir-Fry", calories: 495, protein: 49, fat: 22, carbs: 25, fiber: 3, ingredients: "rice, ground turkey, sesame oil, bell peppers, peanuts", flavor_boosters: "all the spices!", recipe: "Marinate turkey in spices and cook over medium heat. Add in bell peppers. Serve over rice.")
Meal.create!(name: "Yogurt Parfait", calories: 307, protein: 23, fat: 13, carbs: 25, fiber: 4, ingredients: "greek yogurt, dark chocolate, raspberries", flavor_boosters: "sugar free maple syrup", recipe: "add all ingredients in a bowl!")

puts "Creating Meals"
MealDay.create!(meal_id: Meal.first.id, day_id: Day.first.id)
MealDay.create!(meal_id: Meal.first.id, day_id: Day.second.id)
MealDay.create!(meal_id: Meal.first.id, day_id: Day.third.id)
MealDay.create!(meal_id: Meal.first.id, day_id: Day.fourth.id)
MealDay.create!(meal_id: Meal.first.id, day_id: Day.fifth.id)
MealDay.create!(meal_id: Meal.first.id, day_id: Day.sixth.id)
MealDay.create!(meal_id: Meal.first.id, day_id: Day.seventh.id)
MealDay.create!(meal_id: Meal.second.id, day_id: Day.first.id)
MealDay.create!(meal_id: Meal.second.id, day_id: Day.second.id)
MealDay.create!(meal_id: Meal.second.id, day_id: Day.third.id)
MealDay.create!(meal_id: Meal.second.id, day_id: Day.fourth.id)
MealDay.create!(meal_id: Meal.second.id, day_id: Day.fifth.id)
MealDay.create!(meal_id: Meal.second.id, day_id: Day.sixth.id)
MealDay.create!(meal_id: Meal.second.id, day_id: Day.seventh.id)
MealDay.create!(meal_id: Meal.third.id, day_id: Day.first.id)
MealDay.create!(meal_id: Meal.third.id, day_id: Day.second.id)
MealDay.create!(meal_id: Meal.third.id, day_id: Day.third.id)
MealDay.create!(meal_id: Meal.third.id, day_id: Day.fourth.id)
MealDay.create!(meal_id: Meal.third.id, day_id: Day.fifth.id)
MealDay.create!(meal_id: Meal.third.id, day_id: Day.sixth.id)
MealDay.create!(meal_id: Meal.third.id, day_id: Day.seventh.id)
MealDay.create!(meal_id: Meal.fourth.id, day_id: Day.first.id)
MealDay.create!(meal_id: Meal.fourth.id, day_id: Day.second.id)
MealDay.create!(meal_id: Meal.fourth.id, day_id: Day.third.id)
MealDay.create!(meal_id: Meal.fourth.id, day_id: Day.fourth.id)
MealDay.create!(meal_id: Meal.fourth.id, day_id: Day.fifth.id)
MealDay.create!(meal_id: Meal.fourth.id, day_id: Day.sixth.id)
MealDay.create!(meal_id: Meal.fourth.id, day_id: Day.seventh.id)

puts "Creating Exercises"

api_response = RestClient.get("https://wger.de/api/v2/exercise/?language=2")
api_data = JSON.parse(api_response)

api_data['results'].each do |exercise|
    Exercise.create!(
        name: exercise['name'],
        reps: 12,
        sets: 3
    )
end

# Exercise.create!(name: "Back Squats", reps: 12, sets: 4)
# Exercise.create!(name: "Stiff Leg DB Deadlifts", reps: 12, sets: 4)
# Exercise.create!(name: "Goblet Squats", reps: 12, sets: 3)
# Exercise.create!(name: "Hamstring Curls", reps: 12, sets: 3)
# Exercise.create!(name: "Wide-Stance Squats", reps: 15, sets: 3)
# Exercise.create!(name: "Weighted Crunches", reps: 12, sets: 4)
# Exercise.create!(name: "Back Squats", reps: 12, sets: 4)

# Workout.create!(title: "LNDM LB", category: "lower body", description: "follow the exercises", exercises: "4 sets of 12 back squats")
# Workout.create!(title: "LNDM LB", category: "activation", description: "follow the exercises", exercises: "1. 4 sets of 12 back squats, 2. 4 sets of 12 DB deadlifts")
# Workout.create!(title: "LNDM LB", category: "activation", description: "follow the exercises", exercises: "1. 4 sets of 12 back squats, 2. 4 sets of 12 DB deadlifts")
# Workout.create!(title: "LNDM LB", category: "activation", description: "follow the exercises", exercises: "1. 4 sets of 12 back squats, 2. 4 sets of 12 DB deadlifts")
# Workout.create!(title: "LNDM LB", category: "activation", description: "follow the exercises", exercises: "1. 4 sets of 12 back squats, 2. 4 sets of 12 DB deadlifts")
# Workout.create!(title: "LNDM LB", category: "activation", description: "follow the exercises", exercises: "1. 4 sets of 12 back squats, 2. 4 sets of 12 DB deadlifts")
# Workout.create!(title: "LNDM LB", category: "activation", description: "follow the exercises", exercises: "1. 4 sets of 12 back squats, 2. 4 sets of 12 DB deadlifts")
# Workout.create!(title: "LNDM LB", category: "activation", description: "follow the exercises", exercises: "1. 4 sets of 12 back squats, 2. 4 sets of 12 DB deadlifts")

# WorkoutDay.create!(workout_id: Workout.first.id, day_id: Day.first.id )

