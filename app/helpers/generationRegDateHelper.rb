require 'securerandom'
class GenerationRegDateHelper
  def self.generate_password
    @pass = SecureRandom::hex(8)
  end
end