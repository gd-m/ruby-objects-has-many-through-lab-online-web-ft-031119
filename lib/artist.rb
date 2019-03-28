require 'pry'

class Artist

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self

  end

  def self.all
    @@all
  end


  def new_song(song_name , genre)
    new_song = Song.new(song_name,self,genre)
    @songs << new_song
    #binding.pry
    new_song
  end

  def songs
    @songs
  end

  def genres
    @songs.collect do |song|
      song.genre
    end
  end


end
