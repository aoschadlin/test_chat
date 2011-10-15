class Channel < ActiveRecord::Base
  attr_accessible :uuid, :name
  
  validates_presence_of :uuid, :name
  validates_uniqueness_of :uuid
  
  belongs_to :company
end
