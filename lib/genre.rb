require_relative 'artist'
require_relative 'song'

class Genre
  @@all = []

  attr_accessor :name

  def self.all
    @@all.each do |genre| puts genre.name end
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_song(name, artist)
    song = Song.new(name, artist, self)
    @songs << song
  end

  def songs
    Song.all.map do |song| song.genre == self end
  end

  def artists
    self.songs.collect do |song| song.artist end
  end

  def songs
    Song.all.select do |song| song.genre == self end
  end

end
