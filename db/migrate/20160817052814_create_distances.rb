class CreateDistances < ActiveRecord::Migration
  def change
    create_table :distances do |t|
      t.string :length
      t.string :direction

      t.timestamps null: false
    end
  end
end
