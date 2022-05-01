class User < ApplicationRecord
  has_secure_password
  before_create :generate_token

  private
  
  def generate_token
    self.public_token = Digest::SHA256.hexdigest(SecureRandom.hex)
  end
end
