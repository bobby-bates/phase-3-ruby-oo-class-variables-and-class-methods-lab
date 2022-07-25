require 'pry'

class Song
  # Class variables
  @@count = 0
  @@genres = []
  @@artists = []

  attr_accessor :name, :artist, :genre

  def initialize name, artist, genre
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  def self.count
    # binding.pry
    @@count
  end

  def self.genres
    # Return arr of genres w/o duplicates
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  # Return histogram of all genres
  def self.genre_count
    # genres => ["rap", "pop"] # This is calling self.genres, do not want!
    # @@genres => ["rap", "rap", "pop"]
    # binding.pry
    @@genres.tally
  end

  def self.artist_count
    @@artists.tally
  end
end