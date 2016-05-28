class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :description
      t.date :date
      t.string :supplier
      t.string :place
      t.string :status
      t.integer :machine_id
      t.string :order

      t.timestamps
    end
  end
end
