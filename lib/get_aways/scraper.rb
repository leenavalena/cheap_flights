class Scraper 
    
    def self.scrape_titles
            doc = Nokogiri::HTML(open("https://www.groupon.com/getaways?utm_source=channel_occasions_area51&utm_medium=email&t_division=new-york&date=20190814&uu=30456b46-b597-11e4-91a4-00259060b62a&CID=US&tx=0&s=header&c=img&d=Groupon-Getaways&utm_campaign=39e5f987-3090-4d86-ae03-3d12b67ab0ba_0_20190814"))
            
            gtw_titles = doc.css(".cui-udc-title-with-subtitle.one-line-truncate").text #scraped multiple getaways
            doc.css(".cui-udc-title-with-subtitle.one-line-truncate").map(&:text).map(&:strip) #lists getaways

            price_list = doc.css(".cui-price-discount.c-txt-price").map(&:text) #lists prices
            doc.css(".cui-price-discount.c-txt-price").text #prices scrape

            url_list = doc.css("a.cui-content").map{|link|link.attr("href")} #lists urls 
            binding.pry
    end
end
