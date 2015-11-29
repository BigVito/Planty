class CreateJar < ActiveRecord::Migration
  def change
    create_table :jars do |j|
      j.string :name
      j.string :description
      j.float :prezzo
      j.string :location
    end
  end
end
