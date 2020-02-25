class Genre
    attr_accessor :genre, :artist, :name
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end
    def self.all
        @@all
    end
    def songs
        Song.all.select do |songInstance|
            songInstance.genre = self
        end
    end
    def artists
        songs.map do |a|
            a.artist 
        end
    end
end