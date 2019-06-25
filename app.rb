require 'sinatra/base'

class App < Sinatra::Base

    get '/newteam' do
        erb :newteam
    end

    post '/team' do
        @name = params["name"]
        @coach = params["coach"]
        @point_g = params["pg"]
        @shooting_g = params["sg"]
        @small_f = params["sf"]
        @power_f = params["pf"]
        @center = params["c"]
        erb :team
    end

end
