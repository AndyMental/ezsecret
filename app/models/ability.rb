class Ability
  include CanCan::Ability
  def initialize(user)
    user ||= User.new
    user.roles.each do |role|
      if role.name ==  "admin"
        can [:manage], :all
      else
        can [:manage], User
      end
    end
  end
end
