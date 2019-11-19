require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do

    erb :user_input
  end

  post '/' do
    params[:words_to_translate]

    redirect "/piglatinized_words"
  end

  get '/piglatinized_words' do

    erb :piglatinized_words
  end
end
