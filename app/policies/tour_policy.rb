class TourPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def destroy?
    user && user.admin?
  end

  def index?
    true
  end

  def update?
    true
  end

  def edit?
    true
  end

  def new?
    true
  end

  def create?
    user.admin?
  end

  def show?
    true
  end
end
