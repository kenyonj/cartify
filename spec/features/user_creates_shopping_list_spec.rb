require "spec_helper"

feature "User creates a shopping list" do
  scenario "with a valid api key" do
    api = Api.create
    new_list_json_request = {
      api_key: api.api_key
    }

    post api_v1_lists_path, new_list_json_request
    json  = JSON.parse(response.body)

    expect(json).to have_key("token")
  end
end
