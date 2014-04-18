require_relative '../../db/migrate/config'
require_relative '../view/view'
require_relative '../models/restaurant'
class Controller
  def self.menu
    user_choice = View.menu
    run user_choice
  end

  def self.by_distance
    # Restaurant.find_by_distance
    View.display_restaurant_by Restaurant.sort_by_distance
  end

  def self.by_rating
    # Restaurant.find_by_rating
    View.display_restaurant_by(Restaurant.sort_by_rating)
  end

  def self.by_cuisine
    # Restaurant.find_by_rating
    View.display_restaurant_by_cuisine(Restaurant.sort_by_cuisine)
  end

  def self.run user_choice
    case user_choice
    when "1"
      by_rating
    when "2"
      by_distance
    when "3"
      by_cuisine
    else
      View.ending
    end
  end
end
    # def self.by_price restaurant_id
  #   #Restaurant.find_by_price_range
  # end
  #Controller.by_rating
Controller.menu


