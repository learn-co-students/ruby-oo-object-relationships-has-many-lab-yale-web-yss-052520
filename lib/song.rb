class Song

    attr_accessor :name, :artist_name
    attr_reader :artist
    @@all = []

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

    def artist=(artist)
        @artist = artist
        @artist_name = artist.name
    end

end