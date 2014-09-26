class CreateDevices < ActiveRecord::Migration
  def change
    create_table :devices do |t|
      t.string :name
      t.string :description
      t.integer :price
      t.integer :location_id
      t.integer :resolution_id

      t.timestamps
    end
  end
end
