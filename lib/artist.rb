class Artist

  attr_accessor :name , :songs

    @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []

  end

   def song_count
     @@song_count
   end


  def add_song_by_name(name)
     song = Song.new(name)
     @songs << song
     song.artist = self
     @@song_count +=1
  end

  def add_song(name)
    @songs << name
    name.artist = self
    @@song_count +=1
  end

  def songs
    @songs
  end

  def self.song_count
    @@song_count

  end


end
