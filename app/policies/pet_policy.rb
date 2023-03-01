class PetPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end

    def resolve
      scope.all # If users can see all pets
      # scope.where(user: user) # If users can only see their pets
      # scope.where("name LIKE 't%'") # If users can only see pets starting with `t`
      # ...
    end
  end

<<<<<<< HEAD
  def new?
    true
  end

=======
>>>>>>> 796d0a323b1e2de121b1d0b3ffd1920635b0a382
  def show?
    true
  end

  def create?
    true
  end

  def update?
    record.user == user
    # record: the restaurant passed to the `authorize` method in controller
    # user: the `current_user` signed in with Devise
  end

  def destroy?
    record.user == user
  end
end
