class Podcast < ApplicationRecord
  has_many :episodes
  has_many :subscriptions
  belongs_to :genre
end
