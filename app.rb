require 'sinatra'

class Survival < Sinatra::Base
  get '/' do
    erb(:index)
  end

  get '/game' do
    @name = params[:name]
    erb(:game)
  end
end
