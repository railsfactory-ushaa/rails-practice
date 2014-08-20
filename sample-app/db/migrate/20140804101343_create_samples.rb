class CreateSamples < ActiveRecord::Migration
  def change
    create_table :samples do |t|
      t.string :title
      t.text :desc

      t.timestamps
    end
  end
end
