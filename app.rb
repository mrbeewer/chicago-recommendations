require "bundler"
Bundler.require

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :database => "chicago_recommendations"
)

get "/" do
  return "Test"
end


get "/api" do
  # SELECT * FROM recommendations;
  return Place.all.to_json
end
