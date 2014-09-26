class AddWorkTillToDevices < ActiveRecord::Migration
  def change
    add_column :devices, :work_till, :time
  end
end
