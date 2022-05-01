class User < ApplicationRecord
  has_secure_password
  before_create :generate_token
  has_many :projects

  private
  
  def generate_token
    self.public_token = Digest::SHA256.hexdigest(SecureRandom.hex)
  end
end
