class ExosuitUpgrade < ActiveRecord::Base
  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      ExosuitUpgrade.create! row.to_hash
    end
  end
end
