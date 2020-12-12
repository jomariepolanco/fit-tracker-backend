class CreateStats < ActiveRecord::Migration[6.0]
  def change
    create_table :stats do |t|
      t.integer :user_id
      t.integer :exercise_id
      t.integer :weight
      t.string :comment

      t.timestamps
    end
  end
end
