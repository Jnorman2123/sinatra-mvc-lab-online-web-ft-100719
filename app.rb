require_relative 'config/environment'
require_relative 'models/piglatinizer'

class App < Sinatra::Base

  get '/' do

    erb :user_input
  end


  post '/piglatinize' do
    @translation = PigLatinizer.piglatinize(params[:user_phrase])
    @translation.
    erb :piglatinize
  end

end
