class Artist
  attr_accessor :name, :songs  
  
  @@song_count = 0
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def add_song(song)
    @songs << song
    song.artist = self
    @@song_count += 1
  end
  
  def add_song_by_name(song_name)
    song = Song.new(song_name)
    @songs << song
    song.artist = self
    @@song_count += 1
  end
  
  def self.song_count
    @@song_count
    # or Song.all.count
  end
  
  # or to return all songs by artist
  # def songs
  #   Song.all.select {|song| song.artist == self}
  # end
end