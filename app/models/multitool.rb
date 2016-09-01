class Multitool < ActiveRecord::Base
  belongs_to :user
  has_many :multitool_upgrades
end
