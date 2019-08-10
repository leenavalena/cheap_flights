require "./cheap_flights/version"
require 'nokogiri'
require 'open-uri'

class Scraper

    def self.scrape_flights
        flights = []
        doc = Nokogiri::HTML(open("https://www.theflightdeal.com/page/3/"))
        list_flights = doc.
    end 

    def print_first_title
        first_title = self.get_page.css("div#ctitle").first.text
        puts first_title
    end
end 

Scraper.new.print_first_title