class ShipUpgradesController < ApplicationController
  def index
    @ship_upgrades = ShipUpgrade.all
    respond_to do |format|
      format.html
      format.csv {send_data @ship_upgrades.to_csv}
    end
  end

  def import
    ShipUpgrade.import(params[:file])
    redirect_to ship_upgrades_path, notice: "Ship Upgrades Imported"
  end
end
