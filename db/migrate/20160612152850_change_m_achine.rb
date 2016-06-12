class ChangeMAchine < ActiveRecord::Migration
  def change
    rename_column :machines, :user_id, :customer_id
  end

end
