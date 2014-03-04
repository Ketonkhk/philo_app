# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  first           :string(255)
#  last            :string(255)
#  email           :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#  password_digest :string(255)
#  remember_token  :string(255)
#  admin           :boolean          default(FALSE)
#  round_id        :integer
#  debate_id       :integer
#  ballot_id       :integer
#  score_id        :integer **remove from table**
#

class User < ActiveRecord::Base
before_save { self.email = email.downcase }
before_create :create_remember_token
  has_many :debates
  has_many :rounds, :through => :debates
  has_many :ballots
  has_many :scores
  
  has_secure_password
  
 validates :first, :last, :email, :presence=>true, length: {maximum: 50}
 VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
 validates :email,:uniqueness=>{:case_sensitive=>false}, format: { with: VALID_EMAIL_REGEX }
 validates :password, length: { minimum: 6 }
 validates :password, :password_confirmation, :presence=>true
 
  def User.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def User.encrypt(token)
    Digest::SHA1.hexdigest(token.to_s)
  end

  private

    def create_remember_token
      self.remember_token = User.encrypt(User.new_remember_token)
    end

end
