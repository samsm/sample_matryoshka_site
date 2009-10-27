# config.ru
require 'rubygems'
require 'rack'
require 'matryoshka'

use Rack::ShowExceptions
run Matryoshka.new
