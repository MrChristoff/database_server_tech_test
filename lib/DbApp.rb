require 'sinatra/base'


class DbApp < Sinatra::Base
  set :port, 4000
  enable :sessions


  get '/' do
    'Hello DbApp!'
  end

  get '/set' do
     parms_hash = "#{params}"
     p parms_hash
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
