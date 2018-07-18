require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      
      erb :super_hero
    end
    
    post '/teams' do
      @team = params[:team]
      params[:team][:members].each do |t|
        Hero.new(t)
      end
      
      
      params[:team][:members]
      
      erb :team
    end

end
