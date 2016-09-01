class CreateShips < ActiveRecord::Migration
  def change
    create_table :ships do |t|
      t.string :name
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
