class User < ActiveRecord::Base
  has_one :ship
  has_one :multitool
  has_one :exosuit
  has_secure_password

end
