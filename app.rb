require 'pry'
require_relative 'config/environment'

class App < Sinatra::Base

    get "/" do
        erb :user_input
    end

    post "/piglatinize" do
        @pig_latinized_word = PigLatinizer.new
        @pig_latinized_word.piglatinize(params[:user_phrase])
    end
end