

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

        Song.all.select{|array| array.genre == self}
    end

    def artists
       songs.map{|array| array.artist  }

    end


end

genre1 = Genre.new("Rap")
genre2 = Genre.new("Country")
genre3 = Genre.new("Hip hop")