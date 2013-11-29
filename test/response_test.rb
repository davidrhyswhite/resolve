require 'test_helper'

class RequestTest < Test::Unit::TestCase

  def setup
    @request = Resolve::Request.new
  end

  def test_get_should_accept_uri_object
    response = @request.get URI.parse('http://localhost:9292/get')
    assert_equal 200, response.code
  end

  def test_get_should_return_response_object
    response = @request.get URI.parse('http://localhost:9292/get')
    assert_equal Resolve::Response, response.class
  end

end