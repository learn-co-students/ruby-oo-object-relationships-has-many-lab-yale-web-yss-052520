class Artist 
    @@all = [] 
    def initialize(name)
        @name = name 
        @@all << self 
    end 
    attr_reader :name 

    def songs 
        Song.all.select {|one_song| one_song.artist == self}
    end 

    def add_song(new_song)
        new_song.artist = self 
    end 

    def add_song_by_name(new_song_name)
        new_song = Song.new(new_song_name)
        new_song.artist = self 
    end 

    def self.song_count 
        Song.all.size 
    end 
end 

