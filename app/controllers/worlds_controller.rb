require "pry"

class WorldsController < ApplicationController

  #Read all worlds
  get "/worlds/" do
    serialize(World.all)
  end

  #Read individual world
  get "/worlds/:id" do
    world = World.find(params[:id])
    serialize(world)
  end

  #Create individual world
  post "/worlds/" do 
    world = World.create(name_of_world: params[:name_of_world], discovered_year: params[:discovered_year], galaxy_id: params[:galaxy_id])
    world.to_json
  end

  #Update individual world
  patch "/worlds/:id" do
    world = World.find(params[:id])
    world.update(name_of_world: params[:name_of_world], discovered_year: params[:discovered_year])
    world.to_json
  end

 #Delete individual world
  delete "/worlds/:id" do 
    world = World.find(params[:id])
    world.destroy
    serialize(world)
  end

  private

  def world_params
    allowed_params= %w(name_of_world, discovered_year, galaxy)
    params.select {|param,value| allowed_params.include?(param)}
  end

  def serialize(world)
    world.to_json()
  end

end