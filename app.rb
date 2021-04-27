require_relative 'config/environment'
require_relative 'models/puppy.rb'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do
    @new_dog = Puppy.new(params[:name], params[:breed], params[:age])

    erb :create_puppy
  end

  post '/puppy' do
    
    erb :display_puppy
  end

end
