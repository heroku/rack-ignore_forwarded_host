$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'rack/ignore_forwarded_host'

require 'minitest/autorun'
require 'minitest/spec'

require 'sinatra'
require 'rack/test'
