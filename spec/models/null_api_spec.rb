require "spec_helper"

describe NullApi do
  context "#active?" do
    it "returns false" do
      api = NullApi.new

      expect(api.active?).to be_false
    end
  end
end
