require 'pry'
class Song 
  
  @@count = 0 
  @@genres = []
  @@artists = []
  
  def initialize(name, artist, genre)
    @name = name 
    @artist = artist 
    @genre = genre
    @@count += 1 
    @@genres << genre 
    @@artists << artist 
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
      counts = Hash.new 0 
      @@genres.each do |gen|
        counts[gen] += 1 
      end 
  end 
  
  def name 
    @name 
  end 
  
  def artist
    @artist
  end 
  
  def genre
    @genre 
  end 
  
  
end 