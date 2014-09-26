class AddToDateToDevices < ActiveRecord::Migration
  def change
    add_column :devices, :todate, :date
  end
end
