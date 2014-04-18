require_relative 'config'

class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.string :phone
      #t.datetime :hours_of_op
      #t.float :price_range
      t.float :distance
      t.float :rating
      # t.string :cuisine
      t.timestamps
    end
  end
end