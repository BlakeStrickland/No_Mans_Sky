class CreateTradeCommodities < ActiveRecord::Migration
  def change
    create_table :trade_commodities do |t|
      t.string :name
      t.integer :base_cost
      t.text :recipe

      t.timestamps null: false
    end
  end
end
