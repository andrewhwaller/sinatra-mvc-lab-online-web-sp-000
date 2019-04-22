require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
    PigLatinizer.new.piglatinize(params[:user_input])
  end

  post '/results' do
    erb :results
  end
end
