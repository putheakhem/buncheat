class Picture < ActiveRecord::Base
  belongs_to :event
  validates_presence_of :name
end
