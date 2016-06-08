class ChangeServices < ActiveRecord::Migration
  def up
    change_column :services, :status, :string, default: 'Not Done Yet'
  end


  def down
    change_column :services, :status, :string, default: ''
  end


end
