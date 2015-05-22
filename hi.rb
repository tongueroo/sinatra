require 'sinatra'

set :bind, '0.0.0.0'

get '/' do
  "42"
end
