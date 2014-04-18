require_relative '../app/models/cuisine'
require_relative '../app/models/restaurant'
require_relative '../app/models/restaurant_cuisine'


# module YelpDataImporter
#   def self.import(filename=File.dirname(__FILE__) + "/../db/data/yelp_data.rb")
#     field_names = nil
#     YelpData.transaction do
#       File.open(filename).each do |line|
#         data = line.chomp.split(',')
#         if field_names.nil?
#           field_names = data
#         else
#           attribute_hash = Hash[field_names.zip(data)]
#           yelpdata = YelpData.create!(attribute_hash)
#         end
#       end
#     end
#   end
# end


