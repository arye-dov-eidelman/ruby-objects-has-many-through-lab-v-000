class Artist
  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
    @genres = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end
  
  def genre
    @songs.collect{|s| s.genre}
  end
end
