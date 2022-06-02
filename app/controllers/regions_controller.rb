class RegionsController < ApplicationController

  #Read all regions
  get "/regions/" do
    serialize(Region.all)
  end

  #Read individual regions
  get "/regions/:id" do
    region = Region.find(params[:id])
    serialize(region)
  end

  #Create individual region
  post "/regions/" do 
    region = Region.create(name: params[:name], chief: params[:chief], weather_person: params[:weather_person], prominent_species: params[:prominent_species], population: params[:population], world_id: params[:world_id], industrialized: params[:industrialized])
    region.to_json
  end

  #Update individual region
  patch "/regions/:id" do
    region = Region.find(params[:id])
    region.update(name: params[:name], chief: params[:chief], weather_person: params[:weather_person], prominent_species: params[:prominent_species], population: params[:population], world_id: params[:world_id], industrialized: params[:industrialized])
    region.to_json
  end


  #Delete individual region
  delete "/regions/:id" do 
    region = Region.find(params[:id])
    region.destroy
    serialize(region)
  end

  private

  def region_params
    allowed_params= %w(name, chief, weather_person, prominent_species, population, world, industrialized)
    params.select {|param,value| allowed_params.include?(param)}
  end

  def serialize(region)
    region.to_json()
  end


end