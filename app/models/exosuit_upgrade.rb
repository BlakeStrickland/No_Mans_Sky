class ExosuitUpgrade < ActiveRecord::Base
  belongs_to :exosuit
  
  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      ExosuitUpgrade.create! row.to_hash
    end
  end
end
