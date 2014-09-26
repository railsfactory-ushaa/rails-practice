class CreateAvailabilities < ActiveRecord::Migration
  def change
    create_table :availabilities do |t|
      t.date :workfrom
      t.date :worktill
      t.time :starttime
      t.time :endtime
      t.string :days

      t.timestamps
    end
  end
end
