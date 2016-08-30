class ChangeColumnName < ActiveRecord::Migration
  def change
    rename_column :exosuit_upgrades, :type, :category
    rename_column :multitool_upgrades, :type, :category
    rename_column :ship_upgrades, :type, :category
  end
end
