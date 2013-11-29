module Resolve
  class Request

    def get(uri)
      http = Net::HTTP.new uri.host, uri.port
      http.request Net::HTTP::Get.new(uri.request_uri)
    end

  end
end
