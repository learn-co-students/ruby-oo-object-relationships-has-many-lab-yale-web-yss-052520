class Song
    @@all = []
    attr_accessor :name, :artist
    
    def initialize(name)
        @name = name
        save
    end 

    def save
        @@all << self
    end
    
    def self.all 
        @@all
    end 

    def name
        @name
    end

    def artist
        @artist
    end 

    def artist_name
        if self.artist
            self.artist.name
        else
            nil
        end
    end

end 
