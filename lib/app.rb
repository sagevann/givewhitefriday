require 'sinatra'

class GiveWhiteFriday  < Sinatra::Application
  set :views, settings.root + '/../views'

  get '/' do
    erb :index
  end
  
  get '/about' do
      erb :about
  end
end
