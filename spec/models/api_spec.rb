require 'spec_helper'

describe Api do
  context "#generate_api_key" do
    it "creates a unique api_key" do
      apis = []
      30.times do
        apis << Api.create
      end
      api_keys = apis.map(&:api_key).uniq

      expect(api_keys.count).to eq 30
    end
  end
end
