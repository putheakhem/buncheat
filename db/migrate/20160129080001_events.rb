class Events < ActiveRecord::Migration
  def self.up
      create_table :events do |t|
         t.column :title, :string, :limit => 32, :null => false
         t.column :number_date, :integer
         t.column :title, :text
         t.column :created_at, :timestamp
      end
     Event.create :name => "Khmer New Year"
     Event.create :name => "Pchum Ben"
     Event.create :name => "Mek Bochea"
     Event.create :name => "Pisak Bochea"
     Event.create :name => "KaThen"
   end

   def self.down
      drop_table :events
   end
end
