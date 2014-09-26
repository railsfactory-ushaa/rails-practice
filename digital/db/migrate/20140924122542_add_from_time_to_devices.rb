class AddFromTimeToDevices < ActiveRecord::Migration
  def change
    add_column :devices, :fromtime, :time
  end
end
