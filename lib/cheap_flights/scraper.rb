class CheapFlights::Scraper 
    attr_accessor :tiles, :url
    
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

            flights << new_flight
        end

        def self.scrape_flightdeal
            doc = Nokogiri::HTML(open("https://www.theflightdeal.com/category/flight-deals/"))
            new_flight = self.new
            titles = doc.css(".entry-content a")
            url = links = doc.css(".entry-content a").map{|link|link.attr("href")}
        end
end