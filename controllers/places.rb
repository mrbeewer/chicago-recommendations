class PlacesController < ApplicationController

  get "/" do
    @places = Place.all

    erb :places
  end


  get "/api" do
    # SELECT * FROM recommendations;
    return Place.all.to_json
  end

end