class Genre

    attr_accessor :name, :songs, :artists

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select do |song|
            song.genre == self
        end
    end

    def artists
        genre_artists = songs.collect do |song|
            song.artist
        end
        genre_artists
    end

end