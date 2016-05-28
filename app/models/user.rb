class User < ActiveRecord::Base
  has_many :machines
  belongs_to :side
end
