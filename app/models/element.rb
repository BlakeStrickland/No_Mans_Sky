class Element < ActiveRecord::Base
  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Element.create! row.to_hash
    end
  end
end
