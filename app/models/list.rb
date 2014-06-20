class List < ActiveRecord::Base
  before_create :generate_unique_token

  private

  def generate_unique_token
    self.token = SecureRandom.hex(18)
    while List.exists?(token: token)
      self.token = SecureRandom.hex(18)
    end
  end
end
