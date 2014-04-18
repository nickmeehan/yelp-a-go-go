require_relative '../db/config'

class Restaurant < ActiveRecord::Base
  has_many :restaurant_cuisines
  has_many :cuisines, :through => :restaurant_cuisines

  def self.sort_by_distance #Array of All Restaurants

  end

  def self.sort_by_rating
  end


end
