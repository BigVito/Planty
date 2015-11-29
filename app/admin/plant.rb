ActiveAdmin.register Plant do

  form do |f|
    f.inputs do
	  f.semantic_errors *f.object.errors.keys
	  f.input :name
   	  f.input :description
	  f.input :benzene, as: :number
      f.input :formaldehyde, as: :number
      f.input :trichloroethylene, as: :number
      f.input :xylene, as: :number
      f.input :toulene, as: :number
      f.input :ammonia, as: :number
	end
	f.actions
  end

end
