class User < ActiveRecord::Base
  has_many :debates
  has_many :rounds, :through => :debates
  has_many :ballots, :through => :debates
  has_many :scores, :through => :ballots
  
  has_secure_password
  
 validates :first, :last, :email, :presence=>true
 validates :email, :uniqueness=>{:case_sensitive=>false}
 validates :password, :length=>{:minimum=>6}
 validates :password, :password_confirmation, :presence=>true
end
