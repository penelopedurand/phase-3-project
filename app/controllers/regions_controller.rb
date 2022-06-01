class RegionsController < ApplicationController

    #Region route (lists all regions)
  get "/regions" do
    regions_page = Region.all
    regions_page.to_json
  end

  #Returns individual region
  get "/regions/:id" do
    individual_region = Region.find(params[:id])
    individual_region.to_json
  end

  #Deletes individual regions
  delete "/regions/:id" do 
    individual_region = Region.find(params[:id])
    individual_region.destroy
    individual_region.to_json
  end

#   post "/regions" do
#     binding.pry
#     # individual_region = Region.create(name:params[:name], chief:params[:chief], weather_person:params[:weather_person], prominent_species:params[:prominent_species], population:params[:population], world:params[:world], industrialized:params[:industrialized])
#     # individual_region.to_json
#   end


end