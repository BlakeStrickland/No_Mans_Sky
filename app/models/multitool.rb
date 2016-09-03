class Multitool < ActiveRecord::Base
  belongs_to :user
  has_many :multitool_upgrades
  accepts_nested_attributes_for :multitool_upgrades
end
