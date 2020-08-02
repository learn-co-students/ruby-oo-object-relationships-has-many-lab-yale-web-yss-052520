class Artist
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def add_song(song)
    song.artist = self
  end

  def add_song_by_name(songtitle)
    song = Song.new(songtitle)
    song.artist = self
  end

  def self.song_count
    # Song.all.select(|song| song.artist == self).length
    Song.all.length
  end
end
