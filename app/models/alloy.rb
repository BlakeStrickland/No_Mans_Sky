class Alloy < ActiveRecord::Base
  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Alloy.create! row.to_hash
    end
  end
end
