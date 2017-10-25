require 'sinatra'
set :bind, '0.0.0.0'
set :port, 3000

get '/' do
  "MARCADOR: 0-0"
end