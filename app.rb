require_relative 'config/environment'
require_relative 'models/piglatinizer'

class App < Sinatra::Base

  get '/' do

    erb :user_input
  end

  post '/piglatinize' do
    @translation = PigLatinizer.new(params[:words_to_translate])

    redirect "/piglatinized_words"
  end

  get '/piglatinize' do

    erb :piglatinize
  end
end
