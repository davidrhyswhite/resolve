require 'test/unit'
require 'uri'
require 'resolve'

module ResolveTestModule
  include Resolve
end

class ResolveTest < Test::Unit::TestCase

  def test_get_should_accept_uri_object
    response = Resolve.get URI.parse 'http://www.google.co.uk'
    assert_equal '200', response.code
  end

end