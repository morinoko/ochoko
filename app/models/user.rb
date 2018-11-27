class User < ApplicationRecord
  has_secure_password
  
  validates :password, presence: true
  validates :username, presence: true
  validates :email, presence: true, uniqueness: true
  
  def self.find_or_create_by_omniauth(auth_hash)
    self.where(email: auth_hash["info"]["email"]).first_or_create do |user|
      user.username = auth_hash["info"]["name"]
      user.password = SecureRandom.hex
      
      # may need uid and provider later?
    end
  end
end
