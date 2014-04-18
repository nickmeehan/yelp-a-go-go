require_relative '../config'

class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.list :address
      t.list :city
      t.list :state


      t.string :phone
      t.datetime :hours_of_op
      t.float :price
      t.float :ratings

    end
  end
end