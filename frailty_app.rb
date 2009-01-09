require 'rubygems'
gem 'sinatra', '~> 0.3'
require 'sinatra'

configure do
  require File.join(File.dirname(__FILE__), 'config', 'frailty.rb')
end