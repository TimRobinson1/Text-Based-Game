require 'sinatra'
require './lib/player'

class Survival < Sinatra::Base
  use Rack::MethodOverride
  use Rack::Session::Pool

  get '/' do
    erb(:index)
  end

  post '/game/new' do
    session[:name] = Player.new(params[:name])
    redirect '/game'
  end

  get '/game' do
    @name = session[:name].name
    erb(:game)
  end
end
