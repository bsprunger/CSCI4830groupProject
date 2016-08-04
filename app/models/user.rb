class User < ActiveRecord::Base
  # Adds authentication support using password_digest column in the user table
  has_secure_password
  
  # Ensure only one account per email address
  validates_uniqueness_of :email
  
  # Validation for passowrd, email, etc.  password confirmation should be handled by has_secure_password
  validates :password,
    :length => { :minimum => 3, :if => :validate_password? },
    :confirmation => { :if => :validate_password? }

  
  #Working on password confirmation
  private

  def validate_password?
    password.present? || password_confirmation.present?
  end

end
