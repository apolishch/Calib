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

  def company_name
    if side_id == 1
      return customer.name
    else
      return "Supplier"
    end
  end

end
