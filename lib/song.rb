require 'pry'
class Song
    attr_accessor :name, :artist, :genre
    #can produce individual songs
    #each song has a name, artist and genre 
    #keeps track of number of songs
    @@artists = [] 
    @@genres = [] 
    @@count = 0 



    def initialize (name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@artists << @artist
        @@genres << @genre
        @@count += 1
    end
    
    #returns n# of songs created
    def self.count
        @@count
    end

    #returns a unique array of artists of existing songs
    def self.artists
        @@artists.uniq
    end

    #returns a unique array of genres of existing songs
    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        genre_count = {}
        @@genres.each do |genre|
          if genre_count[genre] #if true
            genre_count[genre] += 1 
          else 
            genre_count[genre] = 1
          end
        end
        genre_count
      end

      def self.artist_count
        artist_count = {}
        @@artists.each do |artist|
          if artist_count[artist] #if true
            artist_count[artist] += 1 
          else 
            artist_count[artist] = 1
          end
        end
        artist_count
      end
end
