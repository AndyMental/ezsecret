class SecretCode < ApplicationRecord
  require "securerandom"

  belongs_to :user

  ITERATION_OPTIONS = [1,10,20,50,100]

  def self.generate_codes iterations
    codes = []
    iterations.times.each do |i|
      code = SecureRandom.hex(5).upcase
      codes << SecretCode.create(code: code)
    end
    codes
  end

  def assign_user(user_id)
    self.user_id = user_id
    self.save!
  end
end
