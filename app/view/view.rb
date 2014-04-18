class View

  def self.menu
    transition
    opening
    user_choices
    ending
  end

  def self.opening
    # transition
    print_line
    puts "YELP A GO GO".center(238)
    print_line
  end

  def self.print_line
    puts "~"*238
  end

  def self.user_choices
    puts ""
    puts "How can we help you find a nearby restaurant?".center(238)
    puts ""
    puts "  Type 1 to search by Rating                   ".center(238)
    puts "  Type 2 to search by Distance                 ".center(238)
    puts "  Type 3 to search by Cuisine                  ".center(238)
    puts ""
    print_line
  end

  def self.user_input
    user_input = gets.chomp
  end

  def self.ending
    puts "Brought to you by ayzzee, ak47, coops, and nickmee."
  end



  def self.display_restaurant_by_distance(restaurants)
    restaurants.each_with_index do |restaurant, index|
      puts "#{index + 1}."
      puts "Name:     #{restaurant.name}"
      puts "Distance: #{restaurant.distance}"
      puts "Rating:   #{restaurant.avg_rating}"
    end
  end

  def self.display_restaurant_by_cuisine(cuisines)
    cuisines.each_with_index do |cuisine, index|
      puts "#{index + 1}. #{cuisine.name}"
    end
  end
  def self.transition
    clear_screen
    move_to_home
    # sleep(seconds)
  end

  def self.clear_screen
    print "\e[2J"
  end

  # Moves cursor to the top left of the terminal
  def self.move_to_home
    print "\e[H"
  end


end


# View.display_restaurant_by_distance(Restaurants.sort_by_distance)



View.menu



