class ChangeColumnUSers < ActiveRecord::Migration
  def change
    rename_column :users, :type_id, :side_id
  end
end
