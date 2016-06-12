class Machine < ActiveRecord::Base
  belongs_to :customer
  has_many :services

  def self.search(search)
    if search
      find(:all, :conditions => ['name ILIKE ?', "%#{search}%"])
    else
      find(:all)
    end 
  end
end
