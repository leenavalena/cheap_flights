#  CLI Controller

class GetAways::CLI

    def call 
        greeting 
        list_deals
        Scraper.scrape_titles
        menu
        farewell
    end

    def greeting
        puts "                   Welcome! 
Looking for a get-away? I might be able to help you with that!".colorize(:light_blue)
    end

    def list_deals
        puts "Enter a number you'd like to read more about".colorize(:white)
        puts <<-DOC 
        Flight 1
        Flight 2
        Flight 3
        Flight 4
      DOC
    end 

    def enter_number
        until input.to_i.between?(1,GetAways::Deals.all.length) 
            puts "
 Enter a number to see a deal, type 'list' to look at another destination, or type 'exit' to leave.".colorize(:white)
    end

    def menu
        input = nil
        while input != 'exit'    
            input = gets.strip.downcase
            case input 
            when "1"
                puts " "
                puts "--------------------------------------".colorize(:light_blue)
            when "2" 
                puts " "
                puts "--------------------------------------".colorize(:light_blue)
            when "3"
                puts " "
                puts "--------------------------------------".colorize(:light_blue)
            when "4"
                puts " "
                puts "--------------------------------------".colorize(:light_blue)
            when "list"
                list_deals
            else
                puts "Sorry! I didn't understand that input. Please enter a number or 'exit' to leave."
            end
          end
        end
      end

    def farewell
        puts "Safe travels! :)"
    end
end
