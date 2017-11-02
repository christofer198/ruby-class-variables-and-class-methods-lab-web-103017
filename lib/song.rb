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
    binding.pry
    @@genres.uniq
  end


end
