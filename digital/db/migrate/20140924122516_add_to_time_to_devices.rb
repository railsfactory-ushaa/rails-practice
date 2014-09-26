class AddToTimeToDevices < ActiveRecord::Migration
  def change
    add_column :devices, :totime, :time
  end
end
