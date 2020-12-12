class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.date :date
      t.time :time
      t.integer :workout_id
      t.integer :user_id
      t.string :location

      t.timestamps
    end
  end
end
