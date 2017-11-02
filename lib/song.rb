require 'pry'

class Song
  @@count = 0
  @@artists =[]
  @@genre = []

  attr_accessor :name, :artist, :genre

  def initialize(name,artist,genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genre << genre
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
    @@genre.uniq.each{|x| hsh[x] = @@genre.count(x)}
    hsh
  end      

end
