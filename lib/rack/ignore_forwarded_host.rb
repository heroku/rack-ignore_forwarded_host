require "rack/ignore_forwarded_host/version"
require "rack"

module Rack
  class IgnoreForwardedHost
    HTTP_X_FORWARDED_HOST = 'HTTP_X_FORWARDED_HOST'.freeze

    def initialize(app)
      @app = app
    end

    def call(env)
      env.delete(HTTP_X_FORWARDED_HOST)
      @app.call(env)
    end
  end
end
