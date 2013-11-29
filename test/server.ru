require 'http_router'

run HttpRouter.new {
  get('/get').to do |env|
    [200, {'Content-type' => 'text/plain'}, ["Simple GET request"]]
  end
}