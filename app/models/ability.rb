class Ability
  include CanCan::Ability

    def initialize(user)
      user ||= User.new # guest user (not logged in)
      if user.admin? 
        can :manage, :all
      elsif user.staff?
        can :create, User, role: 'contributor'
        can :manage, Program
        can :manage, Episode
      else
        can :manage, Program do |program|
          program.hosts.any? { |host| host.user == user }
        end
        can :read, :all
      end
  end
end
