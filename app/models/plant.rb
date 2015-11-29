class Plant < ActiveRecord::Base

  belongs_to :product	

  mount_uploader :image, ImageUploader

  validate :name, :description, :benzene, :formaldehyde, :trichloroethylene, :xylene, :toulene, :ammonia

end