class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :secret_code
  has_many :user_role_maps, :class_name => "UserRoleMap", :primary_key => :id, :foreign_key => "user_id"
  has_many :roles, :through => :user_role_maps

  validate :secret_valid

  after_save :is_secret_valid

  def secret_valid
    @code = self.code

    if @code == "" || @code.nil?
      errors.add(:code, ": New user requires Secret Code to register. Please contact Adminstrator.")
    end
  end

  def is_secret_valid
    this_code = SecretCode.find_by_code(self.code)
    if this_code.nil?
      errors.add(:code, ": Secret Code '#{self.code}' is invalid, expired or does not exist. Please contact Adminstrator.")
      raise ActiveRecord::RecordInvalid.new(self)
    else
      this_code.user_id = self.id
      this_code.save!
    end
  end

end
