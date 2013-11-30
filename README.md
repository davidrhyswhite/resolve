# Resolve

Simplified Ruby library for handling HTTP requests and responses.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'resolve'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install resolve

## Usage

### Directly

```ruby
response = Resolve.get 'http://example.com'
puts response.code          # => 200
puts response.status.to_s   # => "OK"
puts response.status.to_sym # => :ok
```

### Classy

```ruby
class BBC::TravelNews
  attr_accessor :page
  include Resolve

  def initialize
    @page = get 'http://www.bbc.co.uk/travelnews'
  end
end
```
## Testing

Since this library is dependent on making HTTP / HTTPS requests to external resources, a small Rack application has been bundled in to simplify testing.

Before running any tests ensure you run:

    rackup test/server.ru

Running the tests is as simple as:

    rake test

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Ensure you have sufficiently tested your changes and all tests pass (`rake test`)
4. Commit your changes (`git commit -am 'Add some feature'`)
5. Push to the branch (`git push origin my-new-feature`)
6. Create new Pull Request
