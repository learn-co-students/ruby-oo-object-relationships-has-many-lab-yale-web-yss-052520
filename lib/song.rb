class Song
    attr_accessor :artist, :name
   
    @@all = []
  
    def initialize(name)
      @name = name
      save
    end
   
    def save
      @@all << self
    end

    def artist_name
        if self.artist
            return self.artist.name
        else
            return nil
        end
    end
   
    def self.all
      @@all
    end
    
end