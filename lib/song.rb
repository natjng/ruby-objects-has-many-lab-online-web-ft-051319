class Song
  attr_accessor :name, :artist
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def artist_name
    return self.artist.name unless self.artist == nil
  end
  
  def self.all
    @@all
  end
end