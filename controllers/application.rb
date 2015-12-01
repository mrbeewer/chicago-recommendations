# defining the starting point for the application
# this used to be app.rb
# now we are going to give controllers the chance to organize
class ApplicationController < Sinatra::Base

  require "bundler"
  Bundler.require

  ActiveRecord::Base.establish_connection(
    :adapter => "postgresql",
    :database => "chicago_recommendations"
  )

  # Need to specify the views folder!
  set :views, File.expand_path("../../views", __FILE__)
  set :public_dir, File.expand_path("../../public", __FILE__)

  not_found do
    erb :fourohfour
  end

end
