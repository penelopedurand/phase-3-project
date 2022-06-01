class RegionsController < ApplicationController

    #Region route (lists all regions)
  get "/regions/" do
    serialize(Region.all)
  end

  #Returns individual region
  get "/regions/:id" do
    region = Region.find(params[:id])
    serialize(region)
  end

  #Deletes individual regions
  delete "/regions/:id" do 
    region = Region.find(params[:id])
    region.destroy
    serialize(region)
  end

#   post "/regions" do
#     binding.pry
#     # individual_region = Region.create(name:params[:name], chief:params[:chief], weather_person:params[:weather_person], prominent_species:params[:prominent_species], population:params[:population], world:params[:world], industrialized:params[:industrialized])
#     # individual_region.to_json
#   end

private

  def region_params
    allowed_params= %w(name, chief, weather_person, prominent_species, population, world, industrialized)
    params.select {|param,value| allowed_params.include?(param)}
  end

  def serialize(region)
    region.to_json(
      # methods: :days_on_bestseller_list
    )
  end


end