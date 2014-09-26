class AddWorkFromToDevices < ActiveRecord::Migration
  def change
    add_column :devices, :work_from, :time
  end
end
