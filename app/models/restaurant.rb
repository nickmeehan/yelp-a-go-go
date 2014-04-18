require_relative '../db/config'

class Cuisine < ActiveRecord::Base
    has_many :restaurant_cuisines
    has_many :cuisines, :through => :restaurant_cuisines
end