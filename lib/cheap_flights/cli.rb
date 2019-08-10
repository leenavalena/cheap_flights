class CheapFlights::CLI

    def call 
        greeting 
        list_seasons
        menu
        farewell
    end

    def greeting
        puts "                   Welcome! 
Looking to travel soon? I might be able to help you with that..."
    end

    def list_seasons
       
        puts "Let's travel somewhere in the:"
        puts <<-DOC 
        1. Winter
        2. Spring 
        3. Summer
        4. Fall 
      DOC
    end 

    def menu
        puts "
 What time of the year are you looking to travel? Enter a number to see a deal, type 'list' to look at the seasons, or type 'exit' to leave."
        input = nil
        while input != "exit"
        input = gets.strip.downcase
            case input 
            when "1"
                puts "Winter special"
            when "2" 
                puts "Spring special"
            when "3"
                puts "Summer Special"
            when "4"
                puts "Fall special"
            when "list"
                list_seasons
            end
          end
        end
      end

      def farewell
        puts "Safe travels! :)"
      end 

