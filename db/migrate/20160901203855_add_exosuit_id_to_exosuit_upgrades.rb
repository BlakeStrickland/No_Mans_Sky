class AddExosuitIdToExosuitUpgrades < ActiveRecord::Migration
  def change
    add_column :exosuit_upgrades, :exosuit_id, :integer
  end
end
