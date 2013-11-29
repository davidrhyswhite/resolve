module Resolve
  class Response
    attr_accessor :net_response

    def initialize(net_response)
      @net_response = net_response
    end

    def code
      @net_response.code.to_i
    end
  end
end