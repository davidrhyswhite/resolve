require 'test_helper'

class ResponseTest < Test::Unit::TestCase

  def setup
    @response = Resolve::Request.new.get URI.parse('http://localhost:9292/get')
  end

  def test_should_return_response_object
    assert_equal Resolve::Response, @response.class
  end

  def test_should_return_response_code
    assert_equal 200, @response.code
  end

  def test_should_return_status_class
    assert_equal Resolve::Response::Status, @response.status.class
  end

  def test_should_return_status_symbol
    assert_equal :ok, @response.status.to_sym
  end

  def test_should_return_status_message
    assert_equal 'OK', @response.status.to_s
  end

end