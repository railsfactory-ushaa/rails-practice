class AddToTimeToSchedules < ActiveRecord::Migration
  def change
    add_column :schedules, :totime, :time
  end
end
