class Energy < ActiveRecord::Base
  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Energy.create! row.to_hash
    end
  end
end
