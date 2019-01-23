class Subscription < ApplicationRecord
  belongs_to :user
  belongs_to :podcast
  validates :podcast_id, uniqueness: { scope: :user_id,
    message: "You're already subscribed to this podcast." }
end
