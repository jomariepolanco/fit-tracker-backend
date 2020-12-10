# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_12_10_211703) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "days", force: :cascade do |t|
    t.string "day"
    t.integer "number"
    t.integer "week_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "exercise_workouts", force: :cascade do |t|
    t.integer "workout_id"
    t.integer "exercise_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "exercises", force: :cascade do |t|
    t.string "name"
    t.integer "reps"
    t.integer "sets"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "goals", force: :cascade do |t|
    t.integer "sleep"
    t.string "nutrition"
    t.integer "hydration"
    t.integer "steps"
    t.string "intentions"
    t.string "reflections"
    t.integer "day_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "meal_days", force: :cascade do |t|
    t.integer "meal_id"
    t.integer "day_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "meals", force: :cascade do |t|
    t.string "name"
    t.integer "calories"
    t.integer "protein"
    t.integer "fat"
    t.integer "carbs"
    t.integer "fiber"
    t.string "ingredients"
    t.string "flavor_boosters"
    t.text "recipe"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "trackings", force: :cascade do |t|
    t.integer "weight"
    t.integer "chest"
    t.integer "hips"
    t.integer "thigh"
    t.integer "waist"
    t.integer "arm"
    t.integer "week_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "weeks", force: :cascade do |t|
    t.string "month"
    t.integer "number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "workout_days", force: :cascade do |t|
    t.integer "workout_id"
    t.integer "day_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "workouts", force: :cascade do |t|
    t.string "title"
    t.string "category"
    t.string "description"
    t.string "exercises"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
