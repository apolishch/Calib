class User < ActiveRecord::Base
  validates :side_id, presence: true
  has_many :machines
  belongs_to :side
end
