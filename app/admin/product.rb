ActiveAdmin.register Product do

  form do |f|
    f.inputs do
	  f.semantic_errors *f.object.errors.keys
	  f.input :name
   	  f.input :description
	  f.input :price, as: :number
	  f.input :plant, as: :select, collection: Plant.all.map{|c| [c.name,c.id]}
	  f.input :jar, as: :select, collection: Jar.all.map{|c| [c.name,c.id]}
	end
	f.actions
  end
	

end
