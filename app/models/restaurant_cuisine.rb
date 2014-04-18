require_relative '../../db/migrate/config'

class RestaurantCuisine < ActiveRecord::Base
  belongs_to :cuisine
  belongs_to :restaurant
end