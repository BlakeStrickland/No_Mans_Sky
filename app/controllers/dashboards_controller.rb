class DashboardsController < ApplicationController
  def home
    @alloys = Alloy.all
    @elements = Element.all
    @energys = Energy.all
    @exo_upgrades = ExosuitUpgrade.all
    @multitool_upgrades = MultitoolUpgrade.all
    @ship_upgrades = ShipUpgrade.all
    @technologies = Technology.all
    @trade_commodities = TradeCommodity.all

  end
end
