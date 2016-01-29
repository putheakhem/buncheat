class Events < ActiveRecord::Migration
  def self.up
      create_table :events do |t|
         t.column :name, :string, :limit => 32, :null => false
         t.column :number_date, :integer
         t.column :title, :text
         t.column :created_at, :timestamp
      end
   end

   def self.down
      drop_table :events
   end
end
