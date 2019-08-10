class CheapFlights::CLI

    def call 
        greeting
        list_flights
        menu
        goodbye
    end

    def greeting 
        puts "Welcome! Looking to travel soon? I might be able to help out with that..."
    end 

    def list_flights
        #here doc
        puts "What time of the year are you planning to travel? Enter a number."
        1. Winter
        2. Spring 
        3. Summer
        4. Fall 
    end 

    def menu
        input = nil
        while != "exit"
            when "1" 
                puts "Let's go somewhere this Winter!"
            when "2"
                puts "Let's go somewhere this Spring!"
            when "3"
                puts "Let's go somewhere this Summer!"
            when "4"
                puts "Let's go somewhere this Fall!"
            end
        end 
    end 

    def goodbye 
        puts "Safe travel! :)"
    end 