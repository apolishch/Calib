class AddPartNrtoMachines < ActiveRecord::Migration
  def change

    add_column :machines, :partnr, :string
  
  end
end
