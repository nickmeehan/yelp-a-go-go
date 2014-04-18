require_relative '../config'

class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.list :address
      t.string :phone
      #t.datetime :hours_of_op
      #t.float :price_range
      t.float :ratings
      t.string :category
    end
  end
end