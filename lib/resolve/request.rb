module Resolve
  class Request

    def get(uri)
      http = Net::HTTP.new uri.host, uri.port
      response = http.request Net::HTTP::Get.new(uri.request_uri)
      Resolve::Response.new response
    end

  end
end
