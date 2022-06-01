require "pry"

class WorldsController < ApplicationController

    #Worlds (world list) route
  get "/worlds/" do
    serialize(World.all)
  end

  #Returns individual world
  get "/world/:id" do
    world = World.find(params[:id])
    serialize(world)
  end

  #Post individual world
  post "/worlds/" do 
    world = World.create(name_of_world: params[:name_of_world], discovered_year: params[:discovered_year], galaxy_id: params[:galaxy_id])
    world.to_json
    # serialize(World.create(world_params))
  end

  #Update individual world
  patch "/worlds/:id" do
    world = World.find(params[:id])
    world.update(name_of_world: params[:name_of_world], discovered_year: params[:discovered_year])
    world.to_json
    # serialize(world)
  end

 #Deletes individual worlds
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
    world.to_json(
      # methods: :days_on_bestseller_list
    )
  end

end