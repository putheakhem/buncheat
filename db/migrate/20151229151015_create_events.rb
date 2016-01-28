class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :num_date
      t.string :description
      t.string :title
      t.boolean :location_status
      t.string :history
      t.timestamps null: false
    end
  end
end
