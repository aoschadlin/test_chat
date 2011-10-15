class Company < ActiveRecord::Base
  attr_accessible :name, :email, :logo, :description
  
  validates_presence_of :name, :email
  
  has_many :channels
end
