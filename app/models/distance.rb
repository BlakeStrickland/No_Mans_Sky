class Distance < ActiveRecord::Base
  def self.total_light_years_traveled()
    lengths = self.all.pluck(:length)
    distance = lengths.first.to_i - lengths.last.to_i
  end
end
