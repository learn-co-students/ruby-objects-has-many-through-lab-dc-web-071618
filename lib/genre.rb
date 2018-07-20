require_relative 'song.rb'
require_relative 'artist.rb'

class Genre

  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.alld
    @@all
  end

  def new_song(name, artist)
    song = New.song(name, artist, self)
  end

  def songs
    Song.all.select do |song|
      song.genre == self
    end
  end

  def artists
    songs.map do |song|
      song.artist
    end
  end

end
