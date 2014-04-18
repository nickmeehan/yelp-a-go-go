require_relative '../../db/migrate/config'
require_relative '../view/view'
require_relative '../models/restaurant'

class Controller
  def self.menu
    user_choice = View.menu
    run user_choice
  end

  def self.by_distance
    View.display_restaurant_by Restaurant.sort_by_distance
  end

  def self.by_rating
    View.display_restaurant_by Restaurant.sort_by_rating
  end

  def self.by_cuisine
    View.display_restaurant_by_cuisine Restaurant.sort_by_cuisine
  end

  def self.run user_choice
    case user_choice
    when "1"
      by_rating
    when "2"
      by_distance
    when "3"
      by_cuisine
    when "4"
      View.ending
    else
      "Invalid input"
    end
  end
end

# Running the program:
Controller.menu


