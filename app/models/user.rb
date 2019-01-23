class User < ApplicationRecord
  include Clearance::User

  def username
    self.email.split('@').first
  end
end
