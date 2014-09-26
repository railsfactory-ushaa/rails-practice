class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.integer :device_id
      t.integer :user_id
      t.integer :order_id
      t.date :fromdate
      t.date :todate
      t.time :fromtime
      t.time :totime

      t.timestamps
    end
  end
end
