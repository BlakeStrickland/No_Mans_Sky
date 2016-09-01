class Exosuit < ActiveRecord::Base
  belongs_to :user
  has_many :exosuit_upgrades
end
