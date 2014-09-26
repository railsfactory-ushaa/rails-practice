class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      t.string :status, default: "pending"
      t.integer :order_id
      t.integer :monitor_id

      t.timestamps
    end
  end
end
