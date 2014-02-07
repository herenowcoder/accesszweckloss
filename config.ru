require 'sinatra'
require 'sinatra/reloader' if development?
require './az1'
run Sinatra::Application
