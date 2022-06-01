class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get "/hi" do
    { hello: "world"}
  end



  

end
