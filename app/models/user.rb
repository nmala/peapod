class User < ApplicationRecord
  has_many :subscriptions
  has_many :podcasts, through: :subscriptions
end
