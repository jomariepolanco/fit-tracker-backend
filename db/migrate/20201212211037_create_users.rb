class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :name
      t.integer :age
      t.integer :weight
      t.integer :height
      t.string :photo

      t.timestamps
    end
  end
end
