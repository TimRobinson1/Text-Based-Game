require 'sinatra'

class Survival < Sinatra::Base
  get '/' do
    erb(:index)
  end
end
