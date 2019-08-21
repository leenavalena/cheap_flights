#  CLI Controller

class GetAways::CLI

    def call 
        greeting 
        enter_number
        Scraper.scrape_titles
        menu
        list_deals
        farewell
    end

    def greeting
        puts "                   Welcome! 
Looking for a get-away? I might be able to help you with that!".colorize(:light_blue)
    end

    def enter_number
        input = gets.strip
        while input != "exit" do 
             puts "
  Choose a deal (by number) that you're interested in, type 'list' to look at other getaways, or type 'exit' to leave."
    end

    def menu
        input = nil
        while input != 'exit'    
            input = gets.strip
            if input <= 4 
                GetAways::Deals.all.each.with_index(1) do |title, index|
                    puts "#{index}. #{deal.title}"
            elseif
                puts "Sorry! I didn't understand that input. Please enter a number or 'exit' to leave."
        end
    end

    def list_deals
        GetAways::Deals.each.with_index(1) do |job,index|
        puts "#{index}. #{job.tile} - #{job.price} - #{job.url}"
    end 
end