class Artist
    attr_accessor :name

    @@all = []
    def initialize(name)
        @name = name
    end

    def songs
        Song.all.select {|song| song.artist == self}
    end

    def add_song(song)
        song.artist = self
    end
    
    def add_song_by_name(name)
        songwname = Song.new(name)
        add_song(songwname)
    end

    def self.all
        @@all
    end 

    def self.song_count
       Song.all.count
    end
end

