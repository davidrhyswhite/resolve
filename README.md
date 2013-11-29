# Resolve

Simplified Ruby library for handling HTTP requests and responses.

## Installation

Add this line to your application's Gemfile:

    gem 'resolve'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install resolve

## Usage

### Directly

    response = Resolve.get 'http://example.com'
    puts response.code   # => 200

### Classy

    class BBC::TravelNews
      attr_accessor :page
      include Resolve

      def initialize
        @page = get 'http://www.bbc.co.uk/travelnews'
      end
    end


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
