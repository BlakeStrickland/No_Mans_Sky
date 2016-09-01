class AddShipIdToShipUpgrades < ActiveRecord::Migration
  def change
    add_column :ship_upgrades, :ship_id, :integer
  end
end
