require_relative 'config/environment'

class App < Sinatra::Base

  get ('/') {
    erb :index
  }

  get ('/new') {
    erb :create_puppy
  }

  post ('/puppy') {
    @name = params[:name]
    @breed = params[:breed]
    @months_old = params[:months_old]
    erb :display_puppy
  }
end
