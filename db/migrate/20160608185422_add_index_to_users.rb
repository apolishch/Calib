class AddIndexToUsers < ActiveRecord::Migration
  def change

    add_column :users, :customer_id, :integer
    add_index :users, :email,                unique: true
  end
end
