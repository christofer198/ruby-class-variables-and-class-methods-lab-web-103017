require 'pry'

class Song
  @@count = 0
  @@artists =[]
  @@genre = []
  @@hsh = {}

  attr_accessor :name, :artist, :genre

  def initialize(name,artist,genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
    @@hsh[artist] = @@count
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    hsh = {}
    @@genres.uniq.each{|x| hsh[x] = @@genres.count(x)}
    hsh
  end

  def self.artist_count
    @@hsh
  end
end
