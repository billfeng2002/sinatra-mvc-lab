require_relative 'config/environment'

class App < Sinatra::Base
    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        @latinizer=PigLatinizer.new(@params[:user_phrase])
        erb :display_output
    end

end