class CreateResolutions < ActiveRecord::Migration
  def change
    create_table :resolutions do |t|
      t.integer :size
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
