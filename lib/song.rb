#class variable @@all that begins as an empty array.
#class method .all that lists each artist in the class variable.
#initialized with a name, an artist, and a genre, and be saved in the @@all array.
class Song

  @@all = []
  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@all << self
  end

  def self.all
    @@all
  end

end
