class CheapFlights::Flights 
    attr_accessor :location, :airline, :price, :url
    
    def self.available 
        # Scrape theflightdeal and return flights based on the data 
        self.scrape_flights

      
    end

    def self.scrape_flights
        flights = []

        flights << self.scrape_flightdeal
        # go to theflightdeal, find the flight specials
        # extract the data 
        # instantiate a flight

        flights
    end

    def self.scrape_flightdeal
        doc = Nokogiri::HTML(open("https://www.theflightdeal.com/category/flight-deals/nyc/"))
        binding.pry
    end
end 