class CreateMachines < ActiveRecord::Migration
  def change
    create_table :machines do |t|

      t.string :name
      t.text :description
      t.string :location
      t.string :year


      t.timestamps
    end
  end
end
