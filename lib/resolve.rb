require 'resolve/version'
require 'net/http'

module Resolve

  autoload :Request, 'resolve/request'

  def self.included(base)
    base.extend Request
  end

  extend Request
end