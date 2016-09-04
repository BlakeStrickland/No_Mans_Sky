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
    if session[:user_id]
      @ship = Ship.find(session[:user_id])
      @exosuit = Exosuit.find(session[:user_id])
      @multitool = Multitool.find(session[:user_id])
    end
  end



  def all_info
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
