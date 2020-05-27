require 'pry'
class Artist 
    attr_accessor :name

    def initialize(name)
        @name = name
    end
    
    # We obtain the array of all Song instances ever created and filter
    # to get only those songs written by the artists referred to by self. 
    def songs
        Song.all.select {|song| song.artist = self}
    end 

    # Critical: making the connection between each new song 
    # and this artist. 
    def add_song(song)
        song.artist = self  #associate the song with this artist
    end 

    #Add song method goes within our Artist class so we know the creator!
    def add_song_by_name(title)
        new_song = Song.new(title)
        #tell the song it belongs to a specific artist
        add_song(new_song) #invoking previously written method
    end

    def self.song_count
       Song.all.size
    end 
end 