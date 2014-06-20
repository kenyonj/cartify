require "spec_helper"

feature "User requests api info" do
  scenario "with a valid api key" do
    api = Api.create
    message = "Welcome to Cartify"

    visit api_v1_info_path(api_key: api.api_key)

    expect(json).to have_key("message")
    expect(json["message"]).to eq message
  end

  scenario "with an invalid api key" do
    api_key = "abc123"
    message = "Sorry, you either did not supply an API key, or it is invalid."

    visit api_v1_info_path(api_key: api_key)

    expect(json).to have_key("message")
    expect(json["message"]).to eq message

  end
end
