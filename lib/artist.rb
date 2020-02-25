require 'pry'
class Artist
    attr_accessor :name, :song, :genre
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end
    def self.all
        @@all
    end
    def new_song(song, genre)
        newSong = Song.new(song, self, genre)
    end
    def songs
        Song.all.select do |songs|
            songs.name = self
        end
    end
    def genres
        songs.map do |a|
            a.genre
        end
    end
end
