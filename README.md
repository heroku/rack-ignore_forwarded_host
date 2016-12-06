# Rack::IgnoreForwardedHost

Ignores X-Forwarded-Host header to prevent malicious redirects

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rack-ignore_forwarded_host'
```

And then execute:

    $ bundle

Follow the instructions below for your framework.

### Rails

```ruby
# config/application.rb
config.middleware.use Rack::IgnoreForwardedHost
```

### Sinatra/Pliny/Rack

Where you mount middleware and your application(s):

```ruby
use Rack::IgnoreForwardedHost
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).
