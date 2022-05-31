class CreateRegions < ActiveRecord::Migration[6.1]
  def change
    create_table :regions do |t|
      t.string :name
      t.string :chief
      t.string :weather_person
      t.string :prominent_species
      t.integer :population
      t.integer :world_id
      t.boolean :industrialized
    end
  end
end
