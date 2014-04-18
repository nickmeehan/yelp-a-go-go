require_relative '../db/config'

class RestaurantCuisine < ActiveRecord::Base
  has_many :cuisines
  has_many  :restaurants
end