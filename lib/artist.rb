#new_song-takes in an argument of a name and genre creates a new song.
#song should know that it belongs to the artist.
#songs, iterates through songs and finds songs that belong to that artist (select)
#genres- iterates over that artist's songs and collects the genre of each song.
class Artist
  @@all = []
  attr_accessor :name

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

  def new_song(name, genre)
    Song.new(name, self, genre)
  end

  def genres
    self.songs.map {|song| song.genre}
  end

end
