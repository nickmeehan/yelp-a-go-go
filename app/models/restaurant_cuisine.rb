require_relative '../../db/migrate/config'

class RestaurantCuisine < ActiveRecord::Base
  belongs_to :cuisines
  belongs_to  :restaurants
end