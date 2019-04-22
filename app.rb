require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/pig_latin' do
    @text = PigLatinizer.new.piglatinize(params[:pig_latin])
    erb :pig_latin
  end
end
