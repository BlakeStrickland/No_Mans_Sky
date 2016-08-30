class TradeCommoditiesController < ApplicationController
  def index
    @trade_commodities = TradeCommodity.all
    respond_to do |format|
      format.html
      format.csv {send_data @ship_upgrades.to_csv}
    end
  end

  def import
    TradeCommodity.import(params[:file])
    redirect_to trade_commodities_path, notice: "Trade Commodities Imported"
  end
end
