require 'sinatra'
require 'sinatra/reloader' if development?
require './az1'
require './az2'
run Sinatra::Application
