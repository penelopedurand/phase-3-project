class GalaxiesController < ApplicationController

    #Galaxy (Home Page) route
  get "/" do
    galaxy_page = Galaxy.all
    galaxy_page.to_json
  end

end