class Song 
    @@all = [ ]

    def initialize(name)
        @name = name 
        @@all << self 
    end 

    attr_reader :name 
    attr_accessor :artist 

    def self.all
        @@all 
    end 
    
    def artist_name 
        if self.artist
            return self.artist.name 
        else return nil 
        end  
    end 
end 