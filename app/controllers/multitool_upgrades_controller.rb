class MultitoolUpgradesController < ApplicationController
  def index
    @multitool_upgrades = MultitoolUpgrade.all
    respond_to do |format|
      format.html
      format.csv {send_data @multitool_upgrades.to_csv}
    end
  end

  def import
    MultitoolUpgrade.import(params[:file])
    redirect_to multitool_upgrades_path, notice: "Multitool Upgrades Imported"
  end
end
