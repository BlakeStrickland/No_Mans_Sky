class Technology < ActiveRecord::Base
  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Technology.create! row.to_hash
    end
  end
end
