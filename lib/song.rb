class Song 
  attr_reader :name,:artist,:genre
 
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
  
  #should return a hash
  def self.genre_count 
    my_hash = Hash.new(0)
    @@genres.each do |g|
      my_hash[g] += 1 
    end
    return my_hash
  end
  
  #should return a hash
  def self.artist_count
    my_hash = Hash.new(0)
    @@artists.each do |a|
      my_hash[a] += 1 
    end
    return my_hash
  end
end