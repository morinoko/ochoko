class User < ApplicationRecord
  has_many :tasting_notes
  has_many :sakes, through: :tasting_notes
  has_secure_password
  
  validates :password, presence: true
  validates :username, presence: true
  validates :email, presence: true, uniqueness: true
  
  def self.find_or_create_by_omniauth(auth_hash)
    self.where(email: auth_hash["info"]["email"]).first_or_create do |user|
      user.username = auth_hash["info"]["name"]
      user.provider = auth_hash["provider"]
      user.uid = auth_hash["uid"]
      user.password = SecureRandom.hex
    end
  end
  
  def sakes_with_tasting_notes
    self.tasting_notes.map { |note| note.sake }
  end
end
