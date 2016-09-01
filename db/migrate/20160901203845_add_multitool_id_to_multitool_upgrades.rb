class AddMultitoolIdToMultitoolUpgrades < ActiveRecord::Migration
  def change
    add_column :multitool_upgrades, :multitool_id, :integer
  end
end
