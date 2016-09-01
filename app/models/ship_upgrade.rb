class ShipUpgrade < ActiveRecord::Base
  belongs_to :ship

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      ShipUpgrade.create! row.to_hash
    end
  end
end
