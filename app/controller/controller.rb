class Controller

  def self.menu
    View.menu
  end

  def self.by_distance restaurant_id
    # Restaurant.find_by_distance
    View.display_restaurant_by_distance(Restaurants.sort_by_distance)
  end

  def self.by_rating restaurant_id
    # Restaurant.find_by_rating
  end
end
    # def self.by_price restaurant_id
  #   #Restaurant.find_by_price_range
  # end


