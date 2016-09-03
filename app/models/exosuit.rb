class Exosuit < ActiveRecord::Base
  belongs_to :user
  has_many :exosuit_upgrades
  accepts_nested_attributes_for :exosuit_upgrades
end
