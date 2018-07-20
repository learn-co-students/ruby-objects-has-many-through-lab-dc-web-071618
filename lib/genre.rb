require "pry"
class Genre
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def songs
    Song.all do |song|
      song.genre == self
    end
  end

  def artists
    songs.map do |song|
      song.artist
    end
  end

  def new_song
    self.songs << song
  end

end
