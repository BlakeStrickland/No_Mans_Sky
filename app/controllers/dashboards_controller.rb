class DashboardsController < ApplicationController
  def home
    @distances = Distance.order(:created_at)
    @todays = @distances.where("created_at >= ?", Time.zone.now.beginning_of_day)
    @total = @distances.total_light_years_traveled()
    @todays_total = @todays.total_light_years_traveled()
  end
end
