# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Week.create!(month: "December", number: 1)

Tracking.create!(weight: 190, chest: 36, hips: 46, thigh: 25, waist: 30, arm: 14, week_id: Week.first.id)

Day.create!(day: "Monday", number: 7, week_id: Week.first.id)

Goal.create!(sleep: 8, nutrition: "1800 calories", hydration: 2500, steps: 10000, intentions: "workout for the first time in a month today! baby steps", reflections: "working out was good, the eating not so much", day_id: Day.first.id)

Meal.create!(name: "Protein Oats", calories: 400, protein: 40, fat: 22, carbs: 40, fiber: 9, ingredients: "rolled oats, almond butter, blueberries, protein powder, almond milk", flavor_boosters: "sugar free maple syrup", recipe: "add oats and milk to bowl. microwave for 2 minutes, stir in the rest of the ingredients")

MealDay.create!(meal_id: Meal.first.id, day_id: Day.first.id)

Workout.create!(title: "LNDM LB", category: "lower body", description: "follow the exercises", exercises: "1. 4 sets of 12 back squats, 2. 4 sets of 12 DB deadlifts")

WorkoutDay.create!(workout_id: Workout.first.id, day_id: Day.first.id )

