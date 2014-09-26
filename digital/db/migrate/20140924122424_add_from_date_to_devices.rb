class AddFromDateToDevices < ActiveRecord::Migration
  def change
    add_column :devices, :fromdate, :date
  end
end
