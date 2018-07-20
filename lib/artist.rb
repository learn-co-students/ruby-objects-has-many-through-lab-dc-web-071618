require_relative 'song'

class Artist
  @@all = []

  attr_accessor :name, :songs

  def self.all
    @@all.each do |artist| puts artist.name end
  end

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def new_song(name, genre)
    song = Song.new(name, self, genre)
  end

  def songs
    Song.all.select do |song| song.artist == self end
  end

  def genres
    self.songs.map do |song|
      song.genre
    end
  end
end
