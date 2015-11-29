class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |p|
      p.string :name
      p.string :description
      p.float :price
    end
  end
end
