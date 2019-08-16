# This modules turns flights into objects 

class CheapFlights::Flights
    attr_accessor :titles, :url 
    @@all = []

    def initialize
        @titles = titles
        @url = url
        @@all << self #saves the objects 
    end

    def self.all
        @@all
    end
end

