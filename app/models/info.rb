class Info < ActiveRecord::Base
  def self.welcome_message
    {
      message: "Welcome to Cartify"
    }
  end

  def self.unauthorized_message
    {
      message: "Sorry, you either did not supply an API key, or it is invalid."
    }
  end
end
