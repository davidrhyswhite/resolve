require 'resolve/version'
require 'net/http'

module Resolve

  autoload :Request, 'resolve/request'

  [:get].each do |method|
    metaclass = class << self; self; end
    metaclass.send(:define_method, method) do |url|
      request = Request.new
      request.send method, url
    end
  end

end