class Song
    attr_accessor :name, :artist

    @@all = []

    def initialize(name)
        @name = name
        save
    end

    def self.all
        @@all
    end

    

    def save
        self.class.all << self
    end
    
    def artist_name
        if !self.artist
            return nil
        else
            return self.artist.name
        end
    end
end