class Genre
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self

  end

  def self.all
    @@all
  end

  def songs
    array = []
    Song.all.collect do |song|
      if song.genre == self
        array << song
      end
    end
    array
  end

  def artists
    songs.collect do|song|
      song.artist
    end

  end

end
