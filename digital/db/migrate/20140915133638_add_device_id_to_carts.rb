class AddDeviceIdToCarts < ActiveRecord::Migration
  def change
    add_column :carts, :device_id, :integer
  end
end
