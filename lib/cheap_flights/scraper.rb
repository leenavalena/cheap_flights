class Scraper 
    
    def self.scrape_flight_titles
            doc = Nokogiri::HTML(open("https://www.theflightdeal.com/category/flight-deals/"))
            flight_titles = doc.css(".entry-content a").text

            #flight_titles.each do |names|
            flight = Flights.new 
            flight.titles = doc.css(".entry-content a").text
            flight.winter = doc.css(".entry-content a")[0].text
            flight.spring = doc.css(".entry-content a")[3].text
            flight.summer = doc.css(".entry-content a")[8].text
            flight.fall = doc.css(".entry-content a")[11].text 
            binding.pry

            flight
        end
    end

    def self.scrape_urls
            doc = Nokogiri::HTML(open("https://www.theflightdeal.com/category/flight-deals/"))
            flight_url = doc.css(".entry-content a").map{|link|link.attr("href")}
            
            flight = self.new
            flight.urls = doc.css(".entry-content a").map{|link|link.attr("href")}
            flight.winter_url = doc.css(".entry-content a").map{|link|link.attr("href")}[0]
            flight.spring_url = doc.css(".entry-content a").map{|link|link.attr("href")}[3]
            flight.summer_url = doc.css(".entry-content a").map{|link|link.attr("href")}[8]
            flight.fall_url = doc.css(".entry-content a").map{|link|link.attr("href")}[11] 

            flight

    end