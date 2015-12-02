class PlacesController < ApplicationController

  get "/" do
    @recommendations = Place.all
    erb :read_recommendation
    # @places = Place.all
    #
    # erb :places
  end

  get "/place" do
    @places = Place.all
    erb :places
  end

  get "/create" do
    erb :create_recommendation
  end

  post "/create" do
    p params
    @rec = Place.new
    @rec.contributor = params[:contributor]
    @rec.place = params[:place]
    @rec.type_of_place = params[:type_of_place]
    @rec.notes = params[:notes]
    @rec.save
    erb :index
  end


  get "/api" do
    # SELECT * FROM recommendations;
    return Place.all.to_json
  end

  get "/api/:id" do
    p params
    return Place.find(params[:id]).to_json
  end

end
