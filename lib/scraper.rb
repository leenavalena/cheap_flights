class Scraper

    def call
        puts 'call is running'
    end

    page = open("https://www.theflightdeal.com/category/flight-deals/")
    doc = Nokogiri::HTML(page)
end 