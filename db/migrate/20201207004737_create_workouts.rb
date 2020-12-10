class CreateWorkouts < ActiveRecord::Migration[6.0]
  def change
    create_table :workouts do |t|
      t.string :title
      t.string :category
      t.string :description

      t.timestamps
    end
  end
end
