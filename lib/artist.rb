require "pry"

class Artist

  attr_accessor :name, :genre, :songs

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
    @songs = []
    @genres = []
  end

  def new_song(name, genre)
    song = Song.new(name, self, genre)
    # binding.pry
    song.artist == self
    song.genre = genre
    @songs << song
    @genres << genre
    song
  end

  def songs
    @songs
  end

  def genres
    @genres
  end
end
