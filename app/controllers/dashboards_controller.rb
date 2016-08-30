class DashboardsController < ApplicationController
  def home
    # @distances = Distance.order(:created_at)
    # @todays = @distances.where("created_at >= ?", Time.zone.now.beginning_of_day)
    # @total = @distances.total_light_years_traveled()
    # @todays_total = @todays.total_light_years_traveled()

    @alloys = Alloy.where(@current_user == User.id)
    @elements = Alloy.where(@current_user == User.id)
    @energys = Energy.where(@current_user == User.id)
    @exo_upgrades = Alloy.where(@current_user == User.id)
    @mulit_upgrades = Alloy.where(@current_user == User.id)
    @ship_upgrades = Alloy.where(@current_user == User.id)
    @technologies = Alloy.where(@current_user == User.id)
    @trade_commodities = Alloy.where(@current_user == User.id)

  end
end
