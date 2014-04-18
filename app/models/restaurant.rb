require_relative '../../db/migrate/config'

class Restaurant < ActiveRecord::Base
  has_many :restaurant_cuisines
  has_many :cuisines, :through => :restaurant_cuisines

  def self.sort_by_distance #Array of All Restaurants
    self.all.order("distance asc")
    # self.all.sort_by &:distance
  end

  def self.sort_by_rating
    self.all.order("rating desc")
    # self.all.sort_by( &:rating ).reverse
  end

  def self.sort_by_cuisine
    self.all.order("cuisine asc")
    # self.all.sort_by &:cuisine
  end
end
