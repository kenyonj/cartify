module Requests
  module JsonHelpers
    def json
      @json ||= JSON.parse(page.body)
    end
  end
end
