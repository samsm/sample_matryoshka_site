# config.ru
require 'rubygems'
require 'rack'
require 'matryoshka'

# You can comment these two lines out if you are using passenger or some other 
# server that will automatically serve static files from public/
require 'static_if_present'
use Rack::StaticIfPresent, :urls => ["/"], :root => "public"

use Rack::ShowExceptions
run Matryoshka.new
