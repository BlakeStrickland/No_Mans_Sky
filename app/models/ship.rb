class Ship < ActiveRecord::Base
  belongs_to :user
  has_many :ship_upgrades

end
