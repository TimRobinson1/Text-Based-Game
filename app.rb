require 'sinatra'
require './lib/player'

# Main app controller
class Survival < Sinatra::Base
  before do
    @player = session[:player]
  end

  use Rack::MethodOverride
  use Rack::Session::Pool

  get '/' do
    erb(:index)
  end

  post '/game/new' do
    session[:player] = Player.new(params[:name])
    redirect '/game'
  end

  get '/game' do
    erb(:game)
  end
end
