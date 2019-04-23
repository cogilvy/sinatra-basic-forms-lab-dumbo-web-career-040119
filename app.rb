require_relative 'config/environment'

class App < Sinatra::Base

  # Home Page
  get ('/') {
    erb :index
  }

  # Take you to the page that contains the form to create a puppy.
  get ('/new') {
    erb :create_puppy
  }

  # Post the results from the filled out form to a new page that displays the
  # characteristics of the puppy. Create instance variables for each of the
  # keys in the 'params' hash.
  post ('/puppy') {
    @name = params[:name]
    @breed = params[:breed]
    @months_old = params[:months_old]
    erb :display_puppy
  }
end
