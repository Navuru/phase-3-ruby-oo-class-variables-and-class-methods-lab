require "pry"
class Song

    attr_accessor :name,:artist,:genre

    @@count = 0
    @@genres = []
    @@artists = []

    def initialize(name,artist,genre)
        @name = name
        @@artists << @artist = artist
        @@genres << @genre = genre 
        @@count += 1
       
    end

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end
    def self.artists
        @@artists.uniq
    end

    def self.artist_count
        @@artists.tally
    end

    def self.genre_count
        @@genres.tally 
    end
#binding.pry
end
