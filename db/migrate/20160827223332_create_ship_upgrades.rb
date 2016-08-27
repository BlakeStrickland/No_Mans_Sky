class CreateShipUpgrades < ActiveRecord::Migration
  def change
    create_table :ship_upgrades do |t|
      t.string :name
      t.text :recipe
      t.string :type

      t.timestamps null: false
    end
  end
end
