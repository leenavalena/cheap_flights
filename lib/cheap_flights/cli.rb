#  CLI Controller


class CheapFlights::CLI

    def call 
        greeting 
        list_seasons
        CheapFlights::Scraper.scrape_flightdeal
        menu
        farewell
    end

    def greeting
        puts "                   Welcome! 
Looking to travel soon? I might be able to help you with that...".colorize(:yellow)
    end

    def list_seasons
       
        puts "Let's travel somewhere in the:".colorize(:white)
        puts <<-DOC 
        1. Winter
        2. Spring 
        3. Summer
        4. Fall 
      DOC
    end 

    def menu
        puts "
 What time of the year are you looking to travel? Enter a number to see a deal, type 'list' to look at the seasons, or type 'exit' to leave.".colorize(:blue)
        input = nil
        while input != "exit"
        input = gets.strip.downcase
            case input 
            when "1"
                puts "Winter special".colorize(:blue)
            when "2" 
                puts "Spring special".colorize(:red)
            when "3"
                puts "Summer Special".colorize(:red)
            when "4"
                puts "Fall special".colorize(:light_blue)
            when "list"
                list_seasons
            end
          end
        end
      end

      def farewell
        puts "Safe travels! :)".colorize(:yellow)
      end 

