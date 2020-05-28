class Artist
    
    attr_accessor :name
    attr_reader :songs 

    def initialize(name)
        @name = name
        @songs = []
    end

    def songs
        @songs << Song.all.select {|song| song.artist == self}
        @songs.flatten
    end

    def add_song(song)
        song.artist = self 
    end

    def add_song_by_name(name)
        add_song(Song.new(name))
    end

    def self.song_count
        Song.all.count 
    end


end