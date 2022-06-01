class WorldsController < ApplicationController

    #Worlds (world list) route
  get "/worlds/" do
    serialize(World.all)
  end

  #Returns individual world
  get "/worlds/:id" do
    world = World.find(params[:id])
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