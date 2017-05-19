require 'sinatra'
require './lib/game'
require './lib/player'

# Main app controller
class Survival < Sinatra::Base
  before do
    @game = session[:game]
    @player = @game.player unless @game.nil?
  end

  use Rack::MethodOverride
  use Rack::Session::Pool

  get '/' do
    erb(:index)
  end

  post '/game/new' do
    session[:game] = Game.new(Player.new(params[:name]))
    redirect '/game'
  end

  get '/game' do
    erb(:game)
  end
end
