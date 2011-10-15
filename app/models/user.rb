class User < ActiveRecord::Base
  authenticates_with_sorcery! do |config|
    config.reset_password_mailer = UserMailer
  end

  attr_accessible :email, :password, :password_confirmation, :companyId

  validates_confirmation_of :password
  validates_presence_of :password, :on => :create
  validates_presence_of :email
  validates_uniqueness_of :email
end
