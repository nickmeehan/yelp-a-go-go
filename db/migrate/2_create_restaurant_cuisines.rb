require_relative 'config'

class CreateRestaurantCuisines < ActiveRecord::Migration
  def change
    create_table :restaurant_cuisines do |t|
      t.belongs_to :restaurant
      t.belongs_to :cuisine
      t.timestamps
    end
  end
end