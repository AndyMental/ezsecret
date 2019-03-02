class SecretCode < ApplicationRecord
  require "securerandom"

  ITERATION_OPTIONS = [1,10,20,50,100]

  def self.generate_codes iterations
    codes = []
    iterations.times.each do |i|
      code = SecureRandom.hex(5).upcase
      codes << SecretCode.create!(code: code)
    end
    codes
  end
end
