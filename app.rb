require_relative 'config/environment'
require_relative 'models/text_analyzer.rb'
#require_relative "models/text_analyzer.rb"

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/' do
   @text_from_user = params[:user_text]
   @num = @text_from_user.split.count
    "Number of Words: #{@num}"

    erb :results
  end
end
