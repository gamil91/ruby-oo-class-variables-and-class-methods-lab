class Song

    @@count = 0
    @@genres = []
    @@artists = []
    
    def self.all
        @@all
    end

    attr_reader :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << genre
        @@artists << artist
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

    def self.genre_count
        @@genres.each_with_object(Hash.new(0)) do |genre, hash|
            hash[genre] += 1
        end
    end


    def self.artist_count
        @@artists.each_with_object(Hash.new(0)) do |artist, hash|
            hash[artist] += 1
        end
    end
        

end