class CreateTechnologies < ActiveRecord::Migration
  def change
    create_table :technologies do |t|
      t.string :name
      t.integer :base_cost
      t.text :recipe

      t.timestamps null: false
    end
  end
end
