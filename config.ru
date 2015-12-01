require "sinatra/base"

# ApplicationController should always be loaded first!
require "./controllers/application"
# then require everything else
require "./controllers/places"
require "./models/place"

map("/") { run PlacesController}
