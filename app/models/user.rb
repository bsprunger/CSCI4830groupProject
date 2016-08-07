class User < ActiveRecord::Base
  has_secure_password
  
  
  validates_uniqueness_of :email
  
  validates :password,
    :length => { :minimum => 3, :if => :validate_password? },
    :confirmation => { :if => :validate_password? }

  private

  def validate_password?
    password.present? and password_confirmation.present?
  end

end
