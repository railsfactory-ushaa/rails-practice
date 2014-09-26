class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :card_type
      t.integer :user_id
      t.integer :cart_id
      t.integer :status_id

      t.timestamps
    end
  end
end
