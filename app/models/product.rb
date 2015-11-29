class Product < ActiveRecord::Base

	has_many :plant
	has_many :jar

end