require "pry"


class Artist

    attr_accessor :name

    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def new_song(new_name, new_genre)
        Song.new(new_name, self, new_genre)
    end

    def self.all
        @@all
    end

    def songs 
         Song.all.select{|song| song.artist == self}
    end

    def genres
        #Genre.all.select{|genres| genre.}
        Genre.all
    end
end

artist1 = Artist.new("Matt")
artist2 = Artist.new("spencer")
artist3 = Artist.new("Jared")

#artist1 = Artist.new("Matt")


#binding.pry
