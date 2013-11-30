module Resolve
  class Response
    autoload :Status, 'resolve/response/status'

    attr_accessor :net_response, :status

    def initialize(net_response)
      @net_response = net_response
      @status = Status.new code
    end

    def code
      @net_response.code.to_i
    end
  end
end