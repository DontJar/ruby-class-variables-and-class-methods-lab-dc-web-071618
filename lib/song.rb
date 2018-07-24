
require "pry"

class Song

  attr_accessor :name, :artist, :genre

  @@count = []
  @@genres = []
  @@artists = []
  @@count = 0

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@artists << artist
    @@genres << genre
    @@count += 1
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    g_counts = {}
    @@genres.map do |x|
      if g_counts.has_key?(x) == false
        g_counts[x] = 1
      else
        g_counts[x] += 1
      end
    end
    g_counts
  end

  def self.artist_count
    a_counts = {}
    @@artists.map do |x|
      if a_counts.has_key?(x) == false
        a_counts[x] = 1
      else
        a_counts[x] += 1
      end
    end
    a_counts
    #return hash {artist => num, artist => num}
    #Song .artist_count is a class method that returns a hash of artists and the number of songs that have those artists
  end

end
