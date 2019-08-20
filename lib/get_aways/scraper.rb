class Scraper 
    
    def self.scrape_titles
            doc = Nokogiri::HTML(open("https://www.groupon.com/getaways?utm_source=channel_occasions_area51&utm_medium=email&t_division=new-york&date=20190814&uu=30456b46-b597-11e4-91a4-00259060b62a&CID=US&tx=0&s=header&c=img&d=Groupon-Getaways&utm_campaign=39e5f987-3090-4d86-ae03-3d12b67ab0ba_0_20190814"))
            
            gtw_titles = doc.css(".cui-udc-title-with-subtitle.one-line-truncate").text #scraped multiple getaways
            gtw_titles.split("\n").drop(41) #lists 10 getaways
           

    end
end
