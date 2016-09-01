class MultitoolUpgrade < ActiveRecord::Base
  belongs_to :multitool
  
  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      MultitoolUpgrade.create! row.to_hash
    end
  end
end
