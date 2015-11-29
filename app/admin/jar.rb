ActiveAdmin.register Jar do

form do |f|
    f.inputs do
	  f.semantic_errors *f.object.errors.keys
	  f.input :name
   	  f.input :description
	  f.input :price
	  f.input :location
	end
	f.actions
  end

  controller do			

  	def permitted_params
    		params.permit plant: [
    			:name,
    			:description,
    			:price,
    			:location,
    		]
  	end
  end

end
