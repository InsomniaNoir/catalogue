class VerbiagePolicy < ApplicationPolicy
  def index?
      true
  end
  
  def destroy?
    user.present? && user.admin?
  end
end