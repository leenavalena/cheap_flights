class CheapFlights::Flights 
    attr_accessor :location, :airline, :price, :url
    
    def self.available 
        # Scrape theflightdeal and return flights based on the data 
        self.scrape_flights

      
    end

    def self.scrape_flights
        flights = []

        flights << self.scrape_googleflights 
        # go to google, find the flight specials
        # extract the data 
        # instantiate a flight

        flights
    end

    def self.scrape_googleflights
        doc = Nokogiri::HTML(open("https://www.google.com/flights?hl=en#flt=/m/02_286..2019-08-27*./m/02_286.2019-08-31;c:USD;e:1;ls:1w;sd:0;t:h"))
        binding.pry
    end
end 