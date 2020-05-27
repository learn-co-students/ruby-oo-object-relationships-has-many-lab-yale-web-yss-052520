class Song
    attr_reader :name
    attr_accessor :artist

    @@all = []

    def initialize(name)
        @name = name
        save()
    end

    def artist_name()
        name = (self.artist()) ? self.artist().name() : nil
    end

    def save 
        @@all << self
    end

    def self.all()
        @@all
    end
end