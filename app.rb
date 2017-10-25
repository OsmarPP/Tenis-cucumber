require 'sinatra'
require './bin/marcadorTenis.rb'
set :bind, '0.0.0.0'
set :port, 3000

$MT = MarcadorTenis.new()

get '/' do
  @marcador = $MT.getMarcador
  erb :marcador
end

post '/anotar' do
  if params[:jugador] == '1'
    $MT.punto_para_jugador(1)
  else
    $MT.punto_para_jugador(2)
  end
  redirect "/"
end