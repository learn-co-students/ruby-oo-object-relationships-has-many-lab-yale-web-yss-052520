class Song

    @@all = []

    attr_accessor :name
    attr_reader :artist

    def initialize(name)
        self.name = name
        self.class.all << self
        @artist = nil
    end

    def artist=(artist)
        @artist = artist
        artist.songs << self
    end

    def artist_name
        return nil if !self.artist
        self.artist.name
    end

    def self.all
        @@all
    end

end