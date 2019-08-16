class CheapFlights::Scraper 
    
        def self.scrape_flight_titles
            doc = Nokogiri::HTML(open("https://www.theflightdeal.com/category/flight-deals/"))
            titles = doc.css(".entry-content a")

            new_flight = self.new 
            new_flight.titles 
            
        end

        def self.scrape_flightdeal
            doc = Nokogiri::HTML(open("https://www.theflightdeal.com/category/flight-deals/"))

            new_flight = self.new
            new_flight.titles = doc.css(".entry-content a")
            new_flight.url = doc.css(".entry-content a").map{|link|link.attr("href")}
        end
end