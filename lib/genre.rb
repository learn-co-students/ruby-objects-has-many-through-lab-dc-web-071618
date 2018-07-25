require 'pry'

class Genre

  @@all=[]
    attr_accessor :name
    def initialize(name)
      @name = name
      #@artist = artist
      #@genre = genre
      @@all << self
    end
    def self.all
      @@all
    end

  #name -has a name (FAILED - 8)
  #songs -has many songs (FAILED - 9)
  #artists - has many artists, through songs (FAILED - 10)

    #songs - has many songs
    def songs
      Song.all.find_all do |song|
      song.genre == self
      end
    end

    def artists
      self.songs.map{ |song| song.artist }.uniq
    end

end#end of genre class
