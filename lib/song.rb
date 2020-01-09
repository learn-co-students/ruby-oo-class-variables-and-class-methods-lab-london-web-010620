require 'pry'

class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << self.artist
        @@genres << self.genre
        # binding.pry
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

    def self.genre_count
        @@genres.group_by {|genres| genres}.map{|key, value| [key, value.size]}.to_h
    end

    def self.artist_count
        @@artists.group_by {|artists| artists}.map{|key, value| [key, value.size]}.to_h
    end





    
end





