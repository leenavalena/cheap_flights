# This modules turns deals into objects 

class Deals
    attr_accessor :titles, :url 
    @@all = []

    def initialize
        @@all << self #saves the objects 
    end

    def self.all
        @@all
    end
end

