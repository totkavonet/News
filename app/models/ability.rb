# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    return unless user.present?
    if user.admin?
      can :manage, :all
    elsif user.maker?
      can :read, Post
      can :create, Post
      can :update, Post do |post|
        post.try(:user) == user
      end
      can :destroy, Post do |post|
        post.try(:user) == user
      end
      can :discard, Post do |post|
        post.try(:user) == user
      end
    elsif user.reader?
      can :read, Post
    end
  end
end
