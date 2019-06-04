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
    hash = {}
    num = 0  
    @@genres.sort
    i = 0
    while i < @@genres.length 
        genre = @@genres[i] 
        num += 1 
        hash[genre] = num 
        i += 1 
      end 
      return hash 
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