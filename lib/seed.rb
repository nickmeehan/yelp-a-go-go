require 'rubygems'
require 'oauth'
require 'json'
require 'dotenv'


module Seed
	def self.api_call(path_input)
		consumer_key = ''
		consumer_secret = ''
		token = ''
		token_secret = ''

		api_host = 'api.yelp.com'

		consumer = OAuth::Consumer.new(consumer_key, consumer_secret, {:site => "http://#{api_host}"})
		access_token = OAuth::AccessToken.new(consumer, token, token_secret)

		path = "/v2/search?term=restaurants&sort=1&location=#{path_input}"

		yelp_data = access_token.get(path).body
		@yelp_object = JSON.parse yelp_data
	end
# --------
  def self.populate
  	p @yelp_object
    @yelp_object["businesses"].shift
    @yelp_object["businesses"].each do |restaurant|
      Restaurant.create(
        :address => restaurant["location"]["address"][0],
        :name => restaurant["name"],
        :distance => restaurant["distance"],
        :rating => restaurant["rating"],
        :phone => restaurant["phone"],
        :cuisine => restaurant["categories"][0][0]
      )
    end
  end
end