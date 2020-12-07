class CreateTrackings < ActiveRecord::Migration[6.0]
  def change
    create_table :trackings do |t|
      t.integer :weight
      t.integer :chest
      t.integer :hips
      t.integer :thigh
      t.integer :waist
      t.integer :arm
      t.integer :week_id

      t.timestamps
    end
  end
end
