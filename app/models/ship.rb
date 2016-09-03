class Ship < ActiveRecord::Base
  belongs_to :user
  has_many :ship_upgrades
  accepts_nested_attributes_for :ship_upgrades
end
