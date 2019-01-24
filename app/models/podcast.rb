class Podcast < ApplicationRecord
  has_many :episodes
  has_many :subscriptions
  belongs_to :genre

  def short_description
    "#{self.description.slice(0..60)}..."
  end
end
