require 'sinatra'
set :bind, '0.0.0.0'
set :port, 3000

$marcadorTenis = '0-0'

get '/' do
  @marcador = $marcadorTenis
  erb :marcador
end