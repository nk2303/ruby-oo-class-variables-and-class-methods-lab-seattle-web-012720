require 'pry'

class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []

    def initialize( name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << artist
        @@genres << genre
    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.artist_count
        hash = Hash.new(0)
        @@artists.each {|i| hash[i] += 1 }
        hash
    end

    def self.genre_count
        hash = Hash.new(0)
        @@genres.each {|i| hash[i] += 1 }
        hash
    end


end

# binding.pry