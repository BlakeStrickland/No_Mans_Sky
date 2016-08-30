class ExosuitUpgradesController < ApplicationController
  def index
    @exosuit_upgrades = ExosuitUpgrade.all
    respond_to do |format|
      format.html
      format.csv {send_data @exosuit_upgrades.to_csv}
    end
  end

  def import
    ExosuitUpgrade.import(params[:file])
    redirect_to exosuit_upgrades_path, notice: "Exouit Upgrades Imported"
  end
end
