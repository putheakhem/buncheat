class Pictures < ActiveRecord::Migration
  def self.up
      create_table :pictures do |t|
         t.column :name, :string, :limit => 32, :null => false
         t.column :description, :text
         t.column :created_at, :timestamp
      end
   end

   def self.down
      drop_table :pictures
   end
end
