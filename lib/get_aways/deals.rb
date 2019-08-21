# This modules turns deals into objects 

class GetAways::Deals
    attr_accessor :titles, :price, :url
    @@all = []

    def initialize
        @titles = titles
        @price = price
        @url = url
        @@all << self #saves the objects 
    end

    def self.all
        @@all
    end
end

