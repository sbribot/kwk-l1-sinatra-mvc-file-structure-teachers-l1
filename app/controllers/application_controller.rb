class ApplicationController < Sinatra::Base

  configure do
  	set :views, "app/views"
  	set :public_dir, "public"
  end

  get "/" do
  	erb :index
  end
  
  post '/' do 
    @x = params["firstnumber"]
    @y = params["secondnumber"]
    @answer = multiply(@x, @y)
    erb :results
end

end 
