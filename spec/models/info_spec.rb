require 'spec_helper'

describe Info do
  context ".welcome_message" do
    it "returns a welcome message json object" do
      message = Info.welcome_message
      json = { message: "Welcome to Cartify" }

      expect(message).to eq json
    end
  end
end
