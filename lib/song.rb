
class Song

    attr_accessor :name, :artist, :genre
    @@all = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@all << self
    end
   

    def self.all
        @@all
    end

end


song1 = Song.new("Old Town","Lil nas x", "Country/Rap" )
song2 = Song.new("Wake me up","spencer","alt" )
song3 = Song.new("down under","Jared", "Hip hop")
song4 = Song.new("uptown","mitch", "Hip hop")
