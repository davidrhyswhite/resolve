require 'test_helper'

class RequestTest < Test::Unit::TestCase

  setup do
    @request = Resolve::Request.new
  end

  def test_get_should_return_response_object
    response = @request.get URI.parse('http://localhost:9292/get')
    assert_equal Resolve::Response, response.class
  end

end