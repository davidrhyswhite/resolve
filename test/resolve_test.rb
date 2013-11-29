require 'test_helper'

module ResolveTestModule
  include Resolve
end

class ResolveTest < Test::Unit::TestCase

  def test_get_should_accept_uri_object
    response = Resolve.get URI.parse('http://localhost:4000')
    assert_equal '200', response.code
  end

end