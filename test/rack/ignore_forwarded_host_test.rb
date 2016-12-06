require 'test_helper'

describe Rack::IgnoreForwardedHost do
  include Rack::Test::Methods

  let(:app) do
    Sinatra.new do
      use Rack::IgnoreForwardedHost

      get "/" do
        redirect to("/login")
      end
    end
  end

  it "removes the proxy header" do
    header "X-Forwarded-Host", "malacious.hacker.org"
    get "/"

    last_response.status.must_equal 302
    last_response.location.wont_equal "http://malacious.hacker.org/login"
    last_response.location.must_equal "http://example.org/login"
  end
end
