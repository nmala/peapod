class User < ApplicationRecord
  include Clearance::User
  has_many :subscriptions
  has_many :podcasts, through: :subscriptions

  def username
    self.email.split('@').first.capitalize
  end
end

###
