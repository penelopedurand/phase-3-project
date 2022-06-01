class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get "/" do
    galaxy_page = Galaxy.all
    galaxy_page.to_json
  end

end
