class MultitoolUpgrade < ActiveRecord::Base
  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      MultitoolUpgrade.create! row.to_hash
    end
  end
end
