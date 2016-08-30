class TradeCommodity < ActiveRecord::Base
  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      TradeCommodity.create! row.to_hash
    end
  end
end
