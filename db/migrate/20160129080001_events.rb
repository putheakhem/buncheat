class Events < ActiveRecord::Migration
  def self.up
      create_table :events do |t|
         t.column :title, :string, :limit => 32, :null => false
         t.column :number_date, :integer
         t.column :created_at, :timestamp
      end
     Event.create :title => "Khmer New Year"
     Event.create :title => "Pchum Ben"
     Event.create :title => "Mek Bochea"
     Event.create :title => "Pisak Bochea"
     Event.create :title => "KaThen"
   end

   def self.down
      drop_table :events
   end
end
