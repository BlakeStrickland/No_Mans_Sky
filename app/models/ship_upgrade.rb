class ShipUpgrade < ActiveRecord::Base

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      ShipUpgrade.create! row.to_hash
    end
  end
end
