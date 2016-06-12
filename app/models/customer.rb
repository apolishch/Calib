class Customer < ActiveRecord::Base
  has_many :users
  has_many :machines
end
