class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  has_many :machines
  belongs_to :side
  belongs_to :customer

  def is_admin?
  self.admin?
  return true
  end

end
