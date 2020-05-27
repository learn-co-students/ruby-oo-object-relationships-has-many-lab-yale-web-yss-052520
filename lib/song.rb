class Song 
    attr_accessor :name, :artist

    # Song class is keeping track of all Song instances created 
    # Each song instance that is created has an artist attribute 
    # and that artist attribute is an instance of the Artist class
    # When artist.add_song(song)is called, the song object is 
    # given its artist attribute with song.artist = self. 
    @@all = []
    
    def initialize(name)
        @name = name
        self.class.all << self  #keeping track of all instances of song
    end 

    # Getter method for the class variable. 
    def self.all
        @@all
    end 

    # self.artist returns an instance of the artist class. 
    # To get the name of the artist, we need to chain together 
    # another getter method
    def artist_name 
        self.artist.nil? ? nil : self.artist.name
    end 
end 