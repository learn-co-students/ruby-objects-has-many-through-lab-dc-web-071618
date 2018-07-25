require 'pry'

class Artist

@@all=[]

  attr_accessor :name

  def initialize(name)
    @name = name
    #@song = song
    #@genre = genre
    @@all << self
  end

  def self.all
    @@all
  end

  #new_song - given a name and genre, creates a new song associated with that artist (FAILED - 1)
  def new_song(name, genre)
    x = Song.new(name, self, genre)
  end

  #songs - has many songs
  def songs
    Song.all.find_all do |song|
    song.artist == self
  end
end

  #genres - has many genres, through songs
  def genres
    self.songs.map{ |song|
       song.genre }.uniq
  end

end#end of class Artist
