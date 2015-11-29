class CreatePlants < ActiveRecord::Migration
  def change
    create_table :plants do |p|	
      p.string :name
      p.string :description
      p.float :benzene
      p.float :formaldehyde 
      p.float :trichloroethylene
      p.float :xylene
      p.float :toulene
      p.float :ammonia
    end
  end
end
