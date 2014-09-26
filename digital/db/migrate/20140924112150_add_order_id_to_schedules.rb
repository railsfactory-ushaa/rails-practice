class AddOrderIdToSchedules < ActiveRecord::Migration
  def change
    add_column :schedules, :order_id, :integer
  end
end
