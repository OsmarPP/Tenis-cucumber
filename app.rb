require 'sinatra'
require './bin/marcadorTenis.rb'
set :bind, '0.0.0.0'
set :port, 3000

$MT = MarcadorTenis.new()

get '/' do
  @marcador = $MT.getMarcador
  erb :marcador
end